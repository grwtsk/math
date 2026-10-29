# Verification target: GRWTSK.Algebra.LinearAlgebra.Hilbert90.Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9350dabb40aad90c4f41d5a363bf6f4b3835bbdf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9350dabb40aad90c4f41d5a363bf6f4b3835bbdf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Fixed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.GroupCohomology.LowDegree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aux](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/declarations/aux--4a6802e15080b18acb5901ea.md) | 56 | `declaration-track:4a6802e15080b18acb5901ea107eedfb61028dc343aff1f0ad74a27da5e5f7b2` |
| 2 | `theorem` | [aux_ne_zero](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/declarations/aux-ne-zero--bd221d6b8e0e0e676bcca88b.md) | 60 | `result-track:bd221d6b8e0e0e676bcca88bf207affdbae101b48805a11a83f51e421e7cbee4` |
| 3 | `theorem` | [isMulOneCoboundary_of_isMulOneCocycle_of_aut_to_units](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/declarations/ismulonecoboundary-of-ismulonecocycle-of-aut-to-units--c3909ecfdcefb42e4cffb19e.md) | 79 | `result-track:c3909ecfdcefb42e4cffb19e208a6df06e2ecd3ceda3cebb13739723a66031c8` |
| 4 | `instance` | [H1ofAutOnUnitsUnique](../../../../../../Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean/declarations/h1ofautonunitsunique--33de60504b55e3ef255149c6.md) | 102 | `declaration-track:33de60504b55e3ef255149c619dca36d80156ad95348b415cf30fe3b457374be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c96d2031d1df4b39424c9719e594e4c750446a2c966a23cb8e247a2fdbba77a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hilbert90/Variant4d9193463d3960e2f271dd1906cf53e106e7773be6d150814ed103743aeca0d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
