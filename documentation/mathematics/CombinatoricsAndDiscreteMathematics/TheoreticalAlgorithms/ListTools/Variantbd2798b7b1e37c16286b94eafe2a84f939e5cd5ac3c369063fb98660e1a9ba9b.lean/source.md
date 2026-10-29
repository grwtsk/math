# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListTools.Variantbd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `560b6ea0a638552fb5f476f0269d7d0a4dd8eee6` · SHA-256 `bd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface.Boolean.Cube

/-- Count the number of `true` entries in a Boolean list. -/
def ListTools.countTrue (xs : List Bool) : Nat :=
  xs.foldl (fun acc b => if b then acc + 1 else acc) 0

/-- Boolean disjunction across a list. -/
def ListTools.anyTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc || b) false

/-- Boolean conjunction across a list. -/
def ListTools.allTrue (xs : List Bool) : Bool :=
  xs.foldl (fun acc b => acc && b) true

/-- Sum a list of natural numbers. -/
def ListTools.sumNat (xs : List Nat) : Nat :=
  xs.foldl (fun acc x => acc + x) 0

/-- Sum a list of integers. -/
def ListTools.sumInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc + x) 0

/-- Product of a list of integers. -/
def ListTools.prodInt (xs : List Int) : Int :=
  xs.foldl (fun acc x => acc * x) 1

end Surface.Boolean.Cube
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30643bb37c327fd5e724fbd453dbe23b42f676d996bf480317bc7ecaa8cadcac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListTools/Variantbd2798b7b1e37c16286b94eafe2a84f939e5cd5ac3c369063fb98660e1a9ba9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
