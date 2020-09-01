# A
def multiplikasjon(tol):
    count = 1
    prod0, prod1 = 0, (1+(1/(count**2)))
    while abs(prod0-prod1) > tol:
        count += 1
        prod0, prod1 = prod1, prod1 * (1 + (1/(count**2)))
    return prod1,count
prod,count = multiplikasjon(0.01)
print(f"Produktet ble {prod:.2f} etter {count} iterasjoner.")

# B
def rekursjon(tol, k=1):
    if (1+(1/k**2)) < 1+tol:
        print(k)
        return (1+(1/k**2))
    else:
        rekursjon.counter += 1
        return rekursjon(tol,k+1) * (1+1/(k**2))
tol = float(input("Skriv in tol: "))
rekursjon.counter = 0
produkt = rekursjon(tol)
print(f"Rekursjonsdybden er {rekursjon.counter} \nProduktet ble: {produkt:.2f}")
