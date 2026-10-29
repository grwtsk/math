# Verification target: Asymptotics Defs Defs Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba527424152cc972de5d8d2030d47288fb530d25",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variant68ef9c1b2d13f99770bcd0c679a23f078f634ea344ff914d7d634ba1682104ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba527424152cc972de5d8d2030d47288fb530d25`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variant68ef9c1b2d13f99770bcd0c679a23f078f634ea344ff914d7d634ba1682104ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Defs/Variant68ef9c1b2d13f99770bcd0c679a23f078f634ea344ff914d7d634ba1682104ed.lean.json)

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
| 1 | `theorem` | [isBigOWith_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigowith-iff.md) | 77 | `result-track:936a1da07bac93f32c1724f5ba99c9951a13a0ff0b86c1ae7370f4b60f0bf6be` |
| 2 | `theorem` | [isBigO_iff_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-iff-isbigowith.md) | 93 | `result-track:769e7c8ffa8d82229f176a099b914435d84af105755354158e74a7b47041bd91` |
| 3 | `theorem` | [isBigO_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-iff-source-edition-3.md) | 96 | `result-track:bff08b9fa8945c4de0601f7aae11078613718ecbb689ec785dc2bc2a7af29e4c` |
| 4 | `theorem` | [isBigO_iff'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-iff-source-edition-2.md) | 100 | `result-track:122485b481461899344bed15a0ead06594866ac39da3f51cdae9fb290d25b554` |
| 5 | `theorem` | [isBigO_iff''](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-iff.md) | 117 | `result-track:0722b1fe50018e7a659805000b20975ac0674b5ce7efbc5f9b1187a343ef0a89` |
| 6 | `theorem` | [IsBigO.of_bound](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-of-bound.md) | 133 | `result-track:51756308fb7d191b82af02ee470195b7c35a8e963680869eced6b13f0b457b10` |
| 7 | `theorem` | [IsBigO.of_bound'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-of-bound-source-edition-2.md) | 136 | `result-track:e44680971d0de36cb0639fa4251a1a9d04895d26838b1f7d5f8b6ebd1aea225e` |
| 8 | `theorem` | [IsBigO.bound](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-bound.md) | 139 | `result-track:90ca3e7323e7e59440b6ca74b1009eb9d4b77d6319c133a835d95cd2e083fd6c` |
| 9 | `theorem` | [IsBigO.of_norm_eventuallyLE](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-of-norm-eventuallyle.md) | 144 | `result-track:155db4105adf06d77b72f771f333923d5672d6d4e06709115b3c59eeae699458` |
| 10 | `theorem` | [IsBigO.of_norm_le](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-of-norm-le.md) | 147 | `result-track:cb5158eba797b719e4a54b017873481e6f27ce39292f8f9af3aadd792e056db6` |
| 11 | `def` | [IsTheta](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/istheta.md) | 152 | `declaration-track:a4f2d316b7f95e80939cc84ea9e720f2699d8a423e976b51aaa0a3b3e5245e05` |
| 12 | `theorem` | [IsBigO.antisymm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/isbigo-antisymm.md) | 158 | `result-track:629edcac5d801847996448856e4ed4385224d96331b1c73efd999cac785d73be` |
| 13 | `lemma` | [IsTheta.isBigO](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/istheta-isbigo.md) | 161 | `result-track:a0caac323ded5e280ab3823d4113b98abbe4b626bd2f9c2fc40eaf7144e9e1b1` |
| 14 | `lemma` | [IsTheta.isBigO_symm](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/istheta-isbigo-symm.md) | 163 | `result-track:3e2bb60795669f3ac7d040e362c2ba0f47d65e140b7c19ab212b843d73fbf6f4` |
| 15 | `theorem` | [isLittleO_iff_forall_isBigOWith](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-iff-forall-isbigowith.md) | 176 | `result-track:a597cf96a22339fd512954e5580c15427b9402525f8d6d6e4e40dbf86b8d79e7` |
| 16 | `theorem` | [isLittleO_iff](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-iff.md) | 182 | `result-track:30d0643027da6917f75e0f0977c964135870b03fc3b92fcbdfa422c0669b0194` |
| 17 | `theorem` | [IsLittleO.def](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-def-source-edition-2.md) | 187 | `result-track:db0b752a0d19fb3eb03c3253de3e03a3f2af9246a27bcd87e471ef8ecebf0a3a` |
| 18 | `theorem` | [IsLittleO.def'](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-def.md) | 190 | `result-track:718e00b1caa41489337673ccd656fd617dbc2e7a74a7b3018508d24297d82850` |
| 19 | `theorem` | [IsLittleO.eventuallyLE](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-eventuallyle.md) | 193 | `result-track:a679ca0d18181d94ab9fa073b327f8fd88f4950e4d35ca25200ba8326cf6fcbf` |
| 20 | `theorem` | [IsLittleO.eventuallyLT_norm_of_eventually_pos](../../../../FunctionalAnalysis/AsymptoticsDefsDefsDefsPublic.lean/declarations/islittleo-eventuallylt-norm-of-eventually-pos.md) | 196 | `result-track:d4f1c9835a3f4f3460ae928398220a42d2ccbb3fa669d5229df73c26d5e43ef3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a2808a20aac9e04069abce66b04b1c80fa986857299745eeee52c1d10481bc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variant68ef9c1b2d13f99770bcd0c679a23f078f634ea344ff914d7d634ba1682104ed.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Defs/Variant68ef9c1b2d13f99770bcd0c679a23f078f634ea344ff914d7d634ba1682104ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
