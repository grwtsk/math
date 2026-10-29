# Solution Nat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `675caa01f171d8981de4c2c74922bbd1464e684f` · SHA-256 `13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
prelude
import Init.Prelude
import Init.Core

def Nat.gcd (_ _ : Nat) : Nat := 0

theorem thm1 a b : Nat.gcd a b = 0 := by
  unfold Nat.gcd
  rfl

theorem thm2 : Nat.gcd 1 1 = 1 := rfl

theorem boom : False :=
  Nat.noConfusion <| Eq.trans (thm1 1 1).symm thm2

-- The following are just to make the export “primitive-complete”
def Nat.land (_ _ : Nat) : Nat := 0
def Nat.lor (_ _ : Nat) : Nat := 0
def Nat.xor (_ _ : Nat) : Nat := 0
def Nat.shiftRight (_ _ : Nat) : Nat := 0
def Nat.shiftLeft (_ _ : Nat) : Nat := 0
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5fc35b28dc75fc27d04398af8e90967a08a6fc20271271bf864235711cc10d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
