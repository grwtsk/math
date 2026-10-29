# Verification target: QPFMultivariate Basic Namespaced Of Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7074f6390e56371bc5c090e91c3f027aa874651",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante270cd31627a2ab6ba9c83cbc1835917d7ca530e7ed1019a909d04393671f089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7074f6390e56371bc5c090e91c3f027aa874651`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante270cd31627a2ab6ba9c83cbc1835917d7ca530e7ed1019a909d04393671f089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante270cd31627a2ab6ba9c83cbc1835917d7ca530e7ed1019a909d04393671f089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/mvqpf.md) | 94 | `declaration-track:0205fd45ddcf4e99e89825ff61aeb637edc0a1b085f737dbad8e1c2c7e2b7e43` |
| 2 | `theorem` | [id_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/id-map.md) | 112 | `result-track:3b9710679d6943475becd55e7a333fb0c202f0a45288cfc7e348d64ec2619866` |
| 3 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/comp-map.md) | 117 | `result-track:03dfc008757c1adcd9166dc8bd534a868511c953ac02fb95a0ed08a0f08cc46d` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/instance.md) | 122 | `declaration-track:d775de359bfe5d5594ca5f27cd5cee85985f5b95a1b12dac1eb58652d37ef560` |
| 5 | `theorem` | [liftP_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/liftp-iff.md) | 127 | `result-track:00c4ee3cb10479cc56dff41916af737e3f685944f25585a1284fbde63e5dd7f5` |
| 6 | `theorem` | [liftR_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/liftr-iff.md) | 141 | `result-track:99e386b4ad2755e2e1c6ace5372acbde57ba595c6b38a5e17292a8293b347bcf` |
| 7 | `theorem` | [mem_supp](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/mem-supp.md) | 163 | `result-track:43787c73292e6cf449f2a90b9da02509b7fd6938eb773e1b070b9e06c02b8e67` |
| 8 | `theorem` | [supp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supp-eq.md) | 178 | `result-track:030a90102e45e1fa392b903d92d56941de888a0fdc3e0988ed1976c7b352fcb2` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/has-good-supp-iff.md) | 181 | `result-track:c3116250cba31469e5f15be72cc442f8e513e46be8f7558e45fc80b18b1fdbd8` |
| 10 | `def` | [IsUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/isuniform.md) | 208 | `declaration-track:4ef2b5a8168a7532e4331411e9adb061b5735a5f2eca69fe30af28b99ae8cefb` |
| 11 | `def` | [LiftPPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/liftppreservation.md) | 213 | `declaration-track:3bb499be82c4ac76835c2a36ab915dbb9d238e29bc855ab2739a0548d57a9ed5` |
| 12 | `def` | [SuppPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supppreservation.md) | 217 | `declaration-track:037029b75ac4da689a3ad95c33c8c722b59fd51de16d6801d6338f1e7f28c733` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supp-eq-of-isuniform.md) | 220 | `result-track:23627307b5c0f8a44fd4b34d778749e2920009bf6ef76f6624953c6a2924effc` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/liftp-iff-of-isuniform.md) | 228 | `result-track:1de5542b9f777c84912d18078659d6625ff55efe72ef081ad1b9c25252fdb5d3` |
| 15 | `theorem` | [supp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supp-map.md) | 242 | `result-track:105556684991db00df524d6aa50c207585cce1c2710dfea5e4dab7279014898d` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supppreservation-iff-isuniform.md) | 248 | `result-track:9ca9b8ee6e1a240f2eb578746000cf91553c09633d5747369f04101b4763464b` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/supppreservation-iff-liftppreservation.md) | 256 | `result-track:7313869ddd9e67ef4f0e2275e09227a8d2cedeca74eec720d92ea3ca39bb4a15` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/liftppreservation-iff-uniform.md) | 270 | `result-track:0d5580642975970aed4c521215397728cd76a22a004feb41c2f8248c49101b96` |
| 19 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/ofequiv.md) | 275 | `declaration-track:396852f756195259a512ecc79c852774d08049ee8a7ea4496ef9ca4923fa156e` |
| 20 | `instance` | [MvPFunctor.instMvQPFObj](../../../../../../ComputerScience/TheoryOfData/DataStructures/QPFMultivariateBasicNamespacedOfEquiv.lean/declarations/mvpfunctor-instmvqpfobj.md) | 289 | `declaration-track:56b102eef76e702be6eba68a18d09bb1963f55d3bcbd7890037842321c8837c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db0a8e00d98bf4d7bd7c07cc2aeee5815e90154ddae7f5a585a3ff0300f73670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante270cd31627a2ab6ba9c83cbc1835917d7ca530e7ed1019a909d04393671f089.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante270cd31627a2ab6ba9c83cbc1835917d7ca530e7ed1019a909d04393671f089.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
