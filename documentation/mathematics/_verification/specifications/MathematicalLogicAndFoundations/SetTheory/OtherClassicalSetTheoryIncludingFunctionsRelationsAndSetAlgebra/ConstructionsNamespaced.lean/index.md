# Verification target: Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b3842fbfe92f191a2ec453cce68479962c99748",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant08e4d4a8b7efccd9d3fbb365e50bfbe135b3650650e85b9ee0d7de4f777ef417.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b3842fbfe92f191a2ec453cce68479962c99748`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant08e4d4a8b7efccd9d3fbb365e50bfbe135b3650650e85b9ee0d7de4f777ef417.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Constructions/Variant08e4d4a8b7efccd9d3fbb365e50bfbe135b3650650e85b9ee0d7de4f777ef417.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Insert` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/finiteinter.md) | 37 | `declaration-track:d4ec072e112a6396bf620ec27676575f04137c15eafccfb5ca2b2dc714c48454` |
| 2 | `inductive` | [finiteInterClosure](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/finiteinterclosure.md) | 46 | `declaration-track:879eb0fab71bca262dc15c2fc4c1e64d5b2d63bdc0e83c9d48eeb8194e059505` |
| 3 | `theorem` | [finiteInterClosure_finiteInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/finiteinterclosure-finiteinter.md) | 51 | `result-track:100b71c4057b0f2a5be9b688f5f44e106296d8564cba303bb39ec78554b3ac80` |
| 4 | `theorem` | [finiteInter_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/finiteinter-mem.md) | 57 | `result-track:8624a5933f5932c6c13d62521a7a80309d20385f065791133c1fbe42db576717` |
| 5 | `theorem` | [finiteInterClosure_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/finiteinterclosure-insert.md) | 68 | `result-track:1609dc46e7aeec0c6cbac680e3061e71bc2d0a5222fd069782bd62626d1d925c` |
| 6 | `theorem` | [mk₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/ConstructionsNamespaced.lean/declarations/mk.md) | 90 | `result-track:2b92b1fcde76faafff17825136d7e5c2e01a8c08f96f6883253cdcfa11e64d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ea278ba684a0ac83a80776017c6db163b5fc5787e6bde2f0794809fc10f50ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Constructions/Variant08e4d4a8b7efccd9d3fbb365e50bfbe135b3650650e85b9ee0d7de4f777ef417.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Constructions/Variant08e4d4a8b7efccd9d3fbb365e50bfbe135b3650650e85b9ee0d7de4f777ef417.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
