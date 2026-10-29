import formal.c2.C1
open C2

def nibble (c : Char) : Nat := if c ≤ '9' then c.toNat-48 else c.toNat-87
def unhex : List Char → Bytes
  | a::b::xs => Char.ofNat (16*nibble a+nibble b)::unhex xs
  | _ => []

def main (args : List String) : IO Unit := do
  let rows := (← IO.FS.readFile args[0]!).splitOn "\n"
  let mut accepted := 0
  let mut rejected := 0
  for row in rows do
    if row.isEmpty then continue
    let f := row.splitOn "|"
    let b := unhex f[2]!.toList
    match decode b with
    | none =>
      unless f[1]! == "reject" do throw (IO.userError f[0]!)
      rejected := rejected+1
    | some r =>
      unless f[1]! == "accept" && bytes r == b && schema r.domain r.fields && valueOK 0 (envelope r) do
        throw (IO.userError f[0]!)
      accepted := accepted+1
  IO.println s!"C2 Lean replay accepted={accepted} rejected={rejected}"
