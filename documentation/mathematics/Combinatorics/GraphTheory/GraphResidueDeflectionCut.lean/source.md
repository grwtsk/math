# Graph Residue Deflection Cut — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e513b0bf7de12bf9ee6d98956ce6863c6a0d3329` · SHA-256 `4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Path
import Mathematics.GraphAccess.Admissibility

/-!
# Reflective modulo-three graph cut

Zero-labelled nodes remain represented as defects but are excluded from the
admitted safe subgraph.  Bypass paths and local loops use only safe arcs.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure ResidueDeflectionCut
    (graph : GraphCut) where
  residue : graph.Node → Residue3
  defectNode : graph.Node → Bool
  defect_iff_zero :
    ∀ node,
      defectNode node = true ↔
        residue node = .zero
  safeArc : Arc graph → Bool
  safeArc_endpoints :
    ∀ arc,
      safeArc arc = true →
        (residue arc.tail).Safe ∧
          (residue arc.head).Safe
  admissibility : AdmissibilityProfile graph
  admitted_node_iff_safe :
    ∀ node,
      NodeAdmissible admissibility node ↔
        (residue node).Safe
  admitted_arc_iff_safe :
    ∀ arc,
      ArcAdmissible admissibility arc ↔
        safeArc arc = true
  Bypass : Type
  bypassFintype : Fintype Bypass
  bypassDecEq : DecidableEq Bypass
  bypassDefect : Bypass → graph.Node
  bypassLeft : Bypass → graph.Node
  bypassRight : Bypass → graph.Node
  bypassPath :
    ∀ bypass,
      DeflectionPath graph
        (bypassLeft bypass)
        (bypassRight bypass)
  bypass_safe :
    ∀ bypass,
      (bypassPath bypass).AllArcs
        (fun arc => safeArc arc = true)
  bypass_complete :
    ∀ node,
      defectNode node = true →
        ∃ bypass,
          bypassDefect bypass = node
  loopBase : Bypass → graph.Node
  defectLoop :
    ∀ bypass,
      DeflectionPath graph
        (loopBase bypass)
        (loopBase bypass)
  defectLoop_safe :
    ∀ bypass,
      (defectLoop bypass).AllArcs
        (fun arc => safeArc arc = true)
  loopBase_safe :
    ∀ bypass,
      (residue (loopBase bypass)).Safe

attribute [instance]
  ResidueDeflectionCut.bypassFintype
  ResidueDeflectionCut.bypassDecEq

theorem ResidueDeflectionCut.defect_not_admitted
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    {node : graph.Node}
    (defect : cut.defectNode node = true) :
    ¬ NodeAdmissible cut.admissibility node := by
  intro admitted
  have safe :=
    (cut.admitted_node_iff_safe node).mp
      admitted
  have zero :=
    (cut.defect_iff_zero node).mp defect
  rw [zero] at safe
  exact safe

end Mathematics.SemiLocalDefect.ResidueDeflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50fd6b80ca3d282936beb9d0b00ece4fe00510ea9975a21d845b490d0813c273 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Graph/Variant4ce02020e8239d261f3e3cc3221a3a8e5b1fa08e80b7457570251ce548523f7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
