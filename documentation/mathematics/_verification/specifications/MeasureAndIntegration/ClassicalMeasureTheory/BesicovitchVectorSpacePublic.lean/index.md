# Verification target: Besicovitch Vector Space Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0197b2b7a73a995f3134089ad2ba90019101e81",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0197b2b7a73a995f3134089ad2ba90019101e81`.

Source path: `GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centerAndRescale](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/centerandrescale.md) | 66 | `declaration-track:1e288c1be8ef0fafa4bdb2d9ce8228efd67229e2658faadc992392ad8326a4ce` |
| 2 | `theorem` | [centerAndRescale_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/centerandrescale-center.md) | 84 | `result-track:145ad72b96465bda159e76f5ebb1d879074ced0ef4ef17f3e850fc07371c326f` |
| 3 | `theorem` | [centerAndRescale_radius](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/centerandrescale-radius.md) | 87 | `result-track:b2d44f02a248d8a09ec7bc2550aedf699bfde2f7a52fe0091bd86a484f521d9a` |
| 4 | `def` | [multiplicity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/multiplicity.md) | 98 | `declaration-track:485f67d0d8aa6b894d975ef62390dfbe35ae18d128ad4c1bcbe4e334b4fccbf4` |
| 5 | `theorem` | [card_le_of_separated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/card-le-of-separated.md) | 109 | `result-track:6bcf5a52c65b41ec8f6211a8191318474f94a62bf808453c97ee2b24961bd0e9` |
| 6 | `theorem` | [multiplicity_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/multiplicity-le.md) | 151 | `result-track:4aaceb1f0460dd07f6d6bb7459f2b4a9ff29d0fee0699f18fe18fcf4510e366f` |
| 7 | `theorem` | [card_le_multiplicity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/card-le-multiplicity.md) | 157 | `result-track:b194e28b567bb3139e8fd2339e694698afc2c7fa41f62f956f2afa52a2ae925d` |
| 8 | `theorem` | [exists_goodδ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/exists-good.md) | 170 | `result-track:3d08dd5d542ab4df1ccc0b34a13fd79c6c4a7c6aab2d5a05c68cb7a40cffe2aa` |
| 9 | `def` | [goodδ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/good.md) | 246 | `declaration-track:a9c5415366246f45d7687cb9ac0fef9b93239b30ea70973bdc2051cefa2550a9` |
| 10 | `theorem` | [goodδ_lt_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/good-lt-one.md) | 249 | `result-track:01cce79bffc49ffcbc67fa4650829b5dbaac5c6af423752988badf042bd28a6f` |
| 11 | `def` | [goodτ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/good-source-edition-2.md) | 255 | `declaration-track:d7151ce3693d523124c3b00cd6db6d117ad12550f652b51b864d6459f33069b4` |
| 12 | `theorem` | [one_lt_goodτ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/one-lt-good.md) | 258 | `result-track:f5b462a0d47e5e42a59660d0ba52eb1ca323a4941452321582998633f2cccf43` |
| 13 | `theorem` | [card_le_multiplicity_of_δ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/card-le-multiplicity-of.md) | 263 | `result-track:5a58a675a7ecb862b26e2d0a3f5d9d2090f47f733087574f459c4b3570cb590c` |
| 14 | `theorem` | [le_multiplicity_of_δ_of_fin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/le-multiplicity-of-of-fin.md) | 267 | `result-track:ad923f6935fa3255b3f6006d185c942b9f87e2525a34cab63044a622a8162099` |
| 15 | `theorem` | [exists_normalized_aux1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/exists-normalized-aux1.md) | 311 | `result-track:3bd2d4a100870bf8a4938bb178493732d4d1569da9cc74187ab82c0c3243af57` |
| 16 | `theorem` | [exists_normalized_aux2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/exists-normalized-aux2.md) | 342 | `result-track:9d6990102d25c002819b6c7b1f141fac21baa318d756ada2293b93ec8eb0d8b7` |
| 17 | `theorem` | [exists_normalized_aux3](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/exists-normalized-aux3.md) | 395 | `result-track:3333a0aec0f64ef304893c7993eb71e1388e521138513d4e9764a44450444a4d` |
| 18 | `theorem` | [exists_normalized](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/exists-normalized.md) | 451 | `result-track:365123b7b2efc559fd544da9de62fe3ce1363a775f92f42492b29bd05996e94a` |
| 19 | `theorem` | [isEmpty_satelliteConfig_multiplicity](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/isempty-satelliteconfig-multiplicity.md) | 488 | `result-track:be2d98b1cdd627e4d027c49c39da02cf785bc6504ab67b81470bb144498459f9` |
| 20 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchVectorSpacePublic.lean/declarations/instance.md) | 499 | `declaration-track:a9615664477a54cc0e2b3f8d51185bd6c93e617b49490195ea3d3022ae972e8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9d798213aaae772d7a3f55d62a0ed7f7373b7187e4dc73f82fd89c24c1acd1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant9f059045b512d164b34be1ef14b02d3116a2cf0f144058ebf310f4ebfcc7e9d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
