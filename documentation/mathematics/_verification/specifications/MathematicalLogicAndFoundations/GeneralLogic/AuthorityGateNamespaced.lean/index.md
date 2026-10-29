# Verification target: Authority Gate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb77655b082adb084658f485c5d37e6343d16bc0",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb77655b082adb084658f485c5d37e6343d16bc0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean.json)

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
| 1 | `inductive` | [ClaimKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/claimkind.md) | 17 | `declaration-track:3120a67a98f6e392f46dd2b810f605191b79faf160c4407ff31bb311dac4ee9f` |
| 2 | `inductive` | [TheoremAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/theoremauthority.md) | 39 | `declaration-track:fbb7adc3b5ebad846a057ae93de61afee2a46df48cac30a705208674f9fe0518` |
| 3 | `inductive` | [LeanAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/leanauthority.md) | 48 | `declaration-track:2350c024e259e96816bd3dbbb1b62ce08c86b33fa9ca8655cfb3d2a59f06db53` |
| 4 | `inductive` | [RustAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/rustauthority.md) | 56 | `declaration-track:11b63bc807f155be8b8393f886a1167c4c9bc18eaccc83bc8cc1bbd965f67844` |
| 5 | `inductive` | [BuildAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/buildauthority.md) | 65 | `declaration-track:840b06eb8bc4f4232945b3e17278af42341dfbdec7a7dceb82a847d965068c37` |
| 6 | `def` | [ClaimKind.isTheoremLike](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/claimkind-istheoremlike.md) | 73 | `declaration-track:9edb9a64e17f32586c949600fa6274e74dc123a3c37331f49ffad44bc91084cd` |
| 7 | `def` | [ClaimKind.isNonAuthoritativeSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/claimkind-isnonauthoritativesurface.md) | 87 | `declaration-track:d4c4881f80482c0b4b024015d73ddcded7df4cbe1c4beea5af76852c13174739` |
| 8 | `def` | [theoremAuthorityMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/theoremauthoritymayforward.md) | 100 | `declaration-track:166c23ede90af6a44edaa83869f99f858b96f2e1a30430c28804cf44b961922b` |
| 9 | `def` | [leanAuthorityMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/leanauthoritymayforward.md) | 106 | `declaration-track:f18ad7df4d6f909460ed18cd2feea321198e3be12bd064f0fd6b768fba1fda6e` |
| 10 | `def` | [rustAuthorityMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/rustauthoritymayforward.md) | 110 | `declaration-track:b707884400d10870976cca907b701b4fd215c6e0ccc7d6d2e670c914e91178b0` |
| 11 | `def` | [buildAuthorityMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/buildauthoritymayforward.md) | 115 | `declaration-track:235c7cae60ec29adca4d65d95f845aa2b85ee30d5244694bb2b0bb24738057a7` |
| 12 | `theorem` | [authority_safety_theorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authority-safety-theorem.md) | 129 | `result-track:c93906d5e2ce48c9d32a6b1dee472480b780a0b4e5cf9f141e13a1b75becf412` |
| 13 | `theorem` | [theorem_forward_iff_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/theorem-forward-iff-checked-or-trusted.md) | 138 | `result-track:0079864b12403a0a9a3e34018f7bdc8d8366bfb43928cdd5bda81d4e1e0c8bf9` |
| 14 | `theorem` | [lean_forward_iff_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/lean-forward-iff-checked-or-trusted.md) | 146 | `result-track:7087713eed3e9d7ac26415810e5011bd003a5dd5acc2e850ab2993cdbfd3974c` |
| 15 | `theorem` | [rust_forward_iff_compile_test_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/rust-forward-iff-compile-test-or-trusted.md) | 154 | `result-track:5d4c7c27f5e276449ffac3d03c06c8d9d45b2857c733eae3a479d468ad52103c` |
| 16 | `theorem` | [build_forward_iff_build_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/build-forward-iff-build-checked-or-trusted.md) | 163 | `result-track:75fa0c18051c7753563117340d58a210e3d2bd6134c1b89275227c515e3ac12b` |
| 17 | `theorem` | [non_authoritative_surface_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/non-authoritative-surface-not-theorem-authority.md) | 172 | `result-track:52b61532fbf7c5cf989beb6d0e9b1290e83f436b393dfc8743adecfff3f6294f` |
| 18 | `theorem` | [generated_text_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/generated-text-not-theorem-authority.md) | 180 | `result-track:1b5afe1081b59647c7097d716f97a10c7698b4e425d783f32abf850531e2818d` |
| 19 | `theorem` | [discovery_hit_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/discovery-hit-not-theorem-authority.md) | 187 | `result-track:b3dd93a0f53d894ed19adfed451279c77066517827efbc198755d897945dafc5` |
| 20 | `theorem` | [jepa_prediction_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/jepa-prediction-not-theorem-authority.md) | 194 | `result-track:6bdeddc632d3757008d22e34b03340a3450b9aaa336b7178995f1b4b3d6c2979` |
| 21 | `theorem` | [local_model_output_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/local-model-output-not-theorem-authority.md) | 201 | `result-track:79444a76a55ff64d9f99b60abc738c46ec7880fa02e64905407868967b6b8dcf` |
| 22 | `theorem` | [skill_launch_plan_not_theorem_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/skill-launch-plan-not-theorem-authority.md) | 208 | `result-track:3d79ca0dbce9aef9e7a90bac595ad84fd8bdfb728246c373f66414f23eb78a2d` |
| 23 | `structure` | [AuthoritySurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritysurface.md) | 225 | `declaration-track:d29f2f49478aa58d9fe9938eff5f0dd4ce7fc459f8e3a7b30842c6231e1facd2` |
| 24 | `def` | [AuthoritySurface.mayForwardTheorem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritysurface-mayforwardtheorem.md) | 231 | `declaration-track:4eaf006aafd4ec1fc2691b6b208eaa1deeb28d8f81258798ea872d96201f3ec8` |
| 25 | `inductive` | [AuthorityTransitionGate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritytransitiongate.md) | 235 | `declaration-track:7bc2dccfe5663a987f001b32283c4ba4b3c26c0353f22adf5647219f69b2dec0` |
| 26 | `def` | [AuthorityTransitionGate.isTheoremAuthorityGate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritytransitiongate-istheoremauthoritygate.md) | 247 | `declaration-track:97a170931f692e965ac232dfc6847751acdb60a72c1efacfed2e2869ce5219c2` |
| 27 | `structure` | [AuthorityTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritytransition.md) | 258 | `declaration-track:885dd2ae0e2069adbda024313a60e3f337ff707aa6bd5a2a9688e87a5a0ec847` |
| 28 | `inductive` | [GateFreeAuthorityRun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/gatefreeauthorityrun.md) | 268 | `declaration-track:1403997c77e9c051ac92cd42e888649ea7b77924491c5970f014010859d40784` |
| 29 | `structure` | [AuthorityContext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritycontext.md) | 277 | `declaration-track:e7525e89cdd1b20e855772551e0d217f27e80fb59840f02a3d757a53248f741e` |
| 30 | `def` | [AuthorityContext.GateFreeRun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authoritycontext-gatefreerun.md) | 282 | `declaration-track:8bdd6f23b7e41524dff4477be883f8bb2315ea6b1e10f164758b7c7c29ac0f0d` |
| 31 | `theorem` | [authority_non_promotion_for_gate_free_runs](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AuthorityGateNamespaced.lean/declarations/authority-non-promotion-for-gate-free-runs.md) | 293 | `result-track:d3c1cd5f03c811e415bf21904d1a4f9f9cbfc9568324f25965b70746c9a24ec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c36f750d733608189f7d180dde2d1e7a71ccaacc067f953343dbbf32a3e85556 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/M4b65726e656c2f417574686f72697479476174652e6c65616e/Variante14031f2863de5f5d6ae13db7a5f246e321c9d80b62c9b75bb78dfaac76dd41c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
