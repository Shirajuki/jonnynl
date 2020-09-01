package restaurant;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Handles guests arriving at and departing from a Restaurant.
 */
public class Waiter implements CapacityListener {
	private final Restaurant restaurant;
	private Collection<Group> waitingGroups = new ArrayList<>();
	public Waiter(Restaurant restaurant) {
		this.restaurant = restaurant;
		this.restaurant.addCapacityListener(this);
	}
	/**
	 * Handles arriving groups, by either seating them immediately
	 * (if possible) or putting them in queue. Those enqueued will
	 * be seated when the Restaurant's (change in) capacity allows it.
	 * @param group
	 */
	public void groupArrived(Group group) {
		if (!restaurant.seatGroup(group)) {
			waitingGroups.add(group);
		}
	}
	public void groupDeparted(int tableNum) {
		restaurant.removeGroupFromTable(tableNum);
	}
	public boolean isWaiting(Group group) {
		return waitingGroups.contains(group);
	}
	@Override
	public void capacityChanged(Restaurant restaurant) {
		int c = restaurant.getCapacity(false);
		if (c > 0)
			tryToSeatWaitingGroups();
		System.out.println("Restaurants new capacity: "+c);
		
	}
	public void tryToSeatWaitingGroups() {
		for (Group group : waitingGroups) {			
			if (restaurant.seatGroup(group)) {
				waitingGroups.remove(group);
			}
		}
	}
}
