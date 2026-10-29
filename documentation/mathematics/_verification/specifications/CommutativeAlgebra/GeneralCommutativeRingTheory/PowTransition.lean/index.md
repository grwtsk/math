# Verification target: Pow Transition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63077f54dd26743062476b81030b79d24097c54f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63077f54dd26743062476b81030b79d24097c54f`.

Source path: `GRWTSK/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ideal.Quotient.factor_ker](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/ideal-quotient-factor-ker.md) | 39 | `result-track:82cf9922c64f8aeb5f9d5cfa55d03f358faad707063eab8ab24781480e2b04b6` |
| 2 | `lemma` | [Ideal.map_mk_comap_factor](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/ideal-map-mk-comap-factor.md) | 50 | `result-track:b5c6fe33ce980958fb028ed6314b65cf38a7754043ec150656e585e807c47729` |
| 3 | `theorem` | [mapQ_eq_factor](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/mapq-eq-factor.md) | 70 | `result-track:479ad30ce4bfeed4da394a8a0d4232591bc3f11bdce700b5c546775b67c0ed68` |
| 4 | `lemma` | [pow_smul_top_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/pow-smul-top-le.md) | 77 | `result-track:aba523386c929d261f4d1407ad123462f3d38926a3046061c98a5fda9b20d9d5` |
| 5 | `abbrev` | [factorPow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/factorpow-source-edition-2.md) | 88 | `declaration-track:e21428c44d578e5c7bbd0d3ccb98efda1e1c5a329ad4c00133608375bde7ca6c` |
| 6 | `abbrev` | [factorPowSucc](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/factorpowsucc.md) | 93 | `declaration-track:47c7cdc2c41ff1ea793610d32e6d0f87f3c42cf46cbcda7b5a4e8fcabea2ea22` |
| 7 | `abbrev` | [factorPow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/factorpow.md) | 114 | `declaration-track:238094c62c44828f9bbfd0c368e6a5f6f5ce6f28cc684743f1ae30baec24be83` |
| 8 | `abbrev` | [factorPowSucc](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/factorpowsucc-source-edition-2.md) | 118 | `declaration-track:a420f14d635546beb0543ba5edf95551e33d7dcdf8e7ce9d7386d4bd72478bd3` |
| 9 | `lemma` | [Ideal.map_mk_comap_factorPow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/ideal-map-mk-comap-factorpow.md) | 127 | `result-track:4c580b9c7fb6debeaaeb52e639d056f493f0a42f37f7145aeeaeccdb903ae5cc` |
| 10 | `lemma` | [factorPowSucc.isUnit_of_isUnit_image](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/PowTransition.lean/declarations/factorpowsucc-isunit-of-isunit-image.md) | 133 | `result-track:76f24a9b7093f7967d9ddc66a9ad747a3123ada41403247d7dbc988063511c38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e3fa6221eb2b0fcfceda70a4eb997aada484fe04dec3935945c31668157c5c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean","GRWTSK/_verification/specifications/Algebra/PowTransition/Variant292c633e81c1c3a1924d9462dabd18387a9ef4c06e8b3bccc5f1c33bfbd51654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
