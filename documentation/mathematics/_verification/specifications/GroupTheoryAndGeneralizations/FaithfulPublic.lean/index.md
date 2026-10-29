# Verification target: Faithful Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5efcb6287cb7009e8d50f4ee2bfd1ce76f65d65f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5efcb6287cb7009e8d50f4ee2bfd1ce76f65d65f`.

Source path: `GRWTSK/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FaithfulVAdd](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulvadd.md) | 41 | `declaration-track:425c2bae392cfef97fad5cfadcc1dc504e07cd4646aa8a1970d8e5af162e8280` |
| 2 | `class` | [FaithfulSMul](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulsmul.md) | 47 | `declaration-track:4f3eb59011f338b4258c6e106450d435171e38f108a929e4348eaf2996a16941` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:9a407f19e314ee504f3351574d0645c8a503a4e9a93adab9309048871a72c94c` |
| 4 | `lemma` | [smul_left_injective'](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/smul-left-injective.md) | 58 | `result-track:8bb935fa1feebf2adff483f69768cc7897a4c75cb5d8c3a8d81a840603345458` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance.md) | 63 | `declaration-track:0ac935db0bbe5ba5e33a9d5fcfe39d5fb1b93bf6dc20a92e4839c2b7ae5a0e9f` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance-source-edition-5.md) | 68 | `declaration-track:c55ef93d90672f482e3e472d2528aaa90e986b551cef255f677fb839d628e3ff` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:fffe02ff3062201021755d08971f9d9c5eb53e48f1d5d47e3cf574bb6373e1ed` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:9a64e57049f67491f7561e5b50a15dec5f235d03fc48b60e3164100e18134561` |
| 9 | `lemma` | [faithfulSMul_iff_injective_smul_one](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulsmul-iff-injective-smul-one.md) | 82 | `result-track:70b2f8eddcbe3fa27f4d6fb2ccd20dcb496c1270b720fc3bf70b300d451bc80c` |
| 10 | `theorem` | [faithfulSMul_iff](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulsmul-iff.md) | 91 | `result-track:e241110b337b71b3d19d236822413a4db207079ac049ed512b7352b06dcd3fdd` |
| 11 | `lemma` | [FaithfulSMul.tower_bot](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulsmul-tower-bot.md) | 99 | `result-track:453a2def96456828d0264526d5f2234e0307eda6a4c5fb1e44b6f204bed5b6dc` |
| 12 | `lemma` | [FaithfulSMul.trans](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/faithfulsmul-trans.md) | 108 | `result-track:5b7c83e93d70c70a8586ac5506d5c36650185512764fe858defcc2acad3b0816` |
| 13 | `lemma` | [IsScalarTower.to₁₂₃](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/isscalartower-to.md) | 120 | `result-track:14a8f0d44722ea61fcc88526f6c5f50f5dd4f7324e8475975449afbf8b3caf25` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FaithfulPublic.lean/declarations/instance-source-edition-4.md) | 126 | `declaration-track:adf6bdb6e7b8288f5e3692858c5290e4b5b27fc499b3b6b308a9bc248ad43daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b3c4f59a19f88ed07b0c7d5d9d7fd786c05b426b654f5c021cce96aadec5b17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Faithful/Variant48c5f3084e45e7b88ae6cfdd4022973f5b357e96f657fff512e913faed14d1c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
