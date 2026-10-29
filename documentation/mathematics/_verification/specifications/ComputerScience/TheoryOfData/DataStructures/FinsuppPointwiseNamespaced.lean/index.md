# Verification target: Finsupp Pointwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfe48235f8cecffa48dd06945ba013b919480e2e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantf205b55ee206e89f3265eab301fc0ad4af064efd174816a0e22c7369778e3f12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfe48235f8cecffa48dd06945ba013b919480e2e`.

Source path: `GRWTSK/Algebra/Pointwise/Variantf205b55ee206e89f3265eab301fc0ad4af064efd174816a0e22c7369778e3f12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantf205b55ee206e89f3265eab301fc0ad4af064efd174816a0e22c7369778e3f12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:3e983788318e11888c554b88d286d0f7b31a60c03e3fb2e74fb895cab3937687` |
| 2 | `theorem` | [coe_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/coe-mul.md) | 51 | `result-track:9a27e33ca000d5e15af5bce2fffa4c538d07047d21f20d22524a2cc7e050252a` |
| 3 | `theorem` | [mul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/mul-apply.md) | 56 | `result-track:bb74dc9a8d3b3580f3f94303995fc2b455f0f4e74305ece25d75317c3a9b4b56` |
| 4 | `theorem` | [support_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/support-mul.md) | 60 | `result-track:27295d45c4974ae445f2160acc036adcd4ffb76a8474df409e27b1960b2d7e98` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:3d01fccddbfd0cccf47b41c03b9fc4b1bc0d7e7718bd479a33d535e59eb033ae` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance.md) | 76 | `declaration-track:184e89f9ebea6d6c59b86bdc59813a10adf1883035fb12ad6581d23d255dda32` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:23593eccf17550e9b6480a86973b6a65d99b4457e815c7576a00325c9dd65686` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-9.md) | 82 | `declaration-track:edc1614d7038c24daff1816a1188755bf4d422d827183727e01c932f05ebefe3` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-5.md) | 85 | `declaration-track:4131ca21c930b79d43804878d82989e84fabc45b89bd269f5f82d4fb879d8907` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-6.md) | 88 | `declaration-track:788a911c3a75f15929f332360959af9b77f6f6bc277fccc08cc4a8ea8088d6ef` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-7.md) | 92 | `declaration-track:8c6ea50d7746486c22c1936a52552159c25aa137295ab3b1a8bfcecbe5eaafe1` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/instance-source-edition-8.md) | 96 | `declaration-track:ae2f7a3554267d6771cc76cee8492ca2a4e9f714e5190804a22155394f2b3e42` |
| 13 | `instance` | [pointwiseScalar](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/pointwisescalar.md) | 103 | `declaration-track:61edc0561904cb2af981555f91667c9abb99178fb26e5b472e2e5928207c9bfa` |
| 14 | `theorem` | [coe_pointwise_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/coe-pointwise-smul.md) | 115 | `result-track:94cd3bbebe7a3437cd4783410195de9258d23dc027af636ae166da9e2e589e18` |
| 15 | `instance` | [pointwiseModule](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppPointwiseNamespaced.lean/declarations/pointwisemodule.md) | 120 | `declaration-track:a71049ae1dbee535e9af5aed02d2319fd90b6968c589308d5f033378eeda2cbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88153a62d1467e731fb62f372c88b50ec463d6a332368e3a337307fd7ce7ed1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pointwise/Variantf205b55ee206e89f3265eab301fc0ad4af064efd174816a0e22c7369778e3f12.lean","GRWTSK/_verification/specifications/Algebra/Pointwise/Variantf205b55ee206e89f3265eab301fc0ad4af064efd174816a0e22c7369778e3f12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
