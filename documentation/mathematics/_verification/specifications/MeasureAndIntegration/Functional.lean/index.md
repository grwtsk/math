# Verification target: Functional

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41cc13afae8e4e068f991ab1a0d14908c398e1e3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Functional.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Functional.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41cc13afae8e4e068f991ab1a0d14908c398e1e3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [theta](../../../../MeasureAndIntegration/Functional.lean/declarations/theta.md) | 29 | `declaration-track:26792767850814e456d463eafd78d85547cfef8b36a6e338d8e7ea4f52645bdb` |
| 2 | `def` | [vStar](../../../../MeasureAndIntegration/Functional.lean/declarations/vstar.md) | 32 | `declaration-track:0e2499957988ab0c284506bca0cc8c4aff27f70ee9654fe3a22ed5bd2f5d0602` |
| 3 | `def` | [cStar](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar.md) | 35 | `declaration-track:c67b9974990447fe173bbb803210d4702ec57c6883be3f83c8ac154021d9ee27` |
| 4 | `def` | [cFun](../../../../MeasureAndIntegration/Functional.lean/declarations/cfun.md) | 40 | `declaration-track:94f26df3e5961e09bc6dcb8d68aa5d903c777a6959820252f6eae1c3e618224e` |
| 5 | `def` | [aStar](../../../../MeasureAndIntegration/Functional.lean/declarations/astar.md) | 47 | `declaration-track:85a438843c4bc7f0daf867e05fd8a062a7193aeff4903541bac34c7c9092188b` |
| 6 | `def` | [bStar](../../../../MeasureAndIntegration/Functional.lean/declarations/bstar.md) | 48 | `declaration-track:ded0862b12d888e84e432482f6580fa53b5d16e41fde08989ac8f2cb8317755e` |
| 7 | `def` | [jStar](../../../../MeasureAndIntegration/Functional.lean/declarations/jstar.md) | 49 | `declaration-track:77663bf73317d810995307d4b16eb4bd77ccc5a614befb1f54e5d5de2f4cd7f7` |
| 8 | `def` | [HD](../../../../MeasureAndIntegration/Functional.lean/declarations/hd.md) | 53 | `declaration-track:703497252596a64eb9da4871299cc849adb45bbd8aa95f0d2025fd0270781f38` |
| 9 | `theorem` | [theta_nonneg](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-nonneg.md) | 57 | `result-track:da7ca464436f24df8e3d9e8dab4776cecb698a83f30c240fce6a772d68c5dfb6` |
| 10 | `theorem` | [theta_pos](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-pos.md) | 60 | `result-track:81cacd7e88cb9efdeeced7d1cadca1dc5d7b09831de75104fff8ef11d386fc9a` |
| 11 | `theorem` | [theta_le](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-le.md) | 63 | `result-track:a8503d523b2833cc17ed8a2bb2bdc728806c2c2bc49eb8e03ccfc3ec72ad755a` |
| 12 | `theorem` | [sqrt_two_inv_lt_one](../../../../MeasureAndIntegration/Functional.lean/declarations/sqrt-two-inv-lt-one.md) | 68 | `result-track:5088f9e4a6563a27ed8fcab5faab61f08684e57b11fa3b2dd10c8dce6326215a` |
| 13 | `theorem` | [theta_sq_le](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-sq-le.md) | 74 | `result-track:ace6c4153b8da4e5e23a3926c08a69aff213c3920772ff18d02bd6daa0df1c05` |
| 14 | `theorem` | [theta_lt_pi_div_two](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-lt-pi-div-two.md) | 82 | `result-track:8605be60e15ec0aa1ecd45c74427d10fe4e08a3bb1e098446e3c8fcfded129a7` |
| 15 | `theorem` | [sin_theta_nonneg](../../../../MeasureAndIntegration/Functional.lean/declarations/sin-theta-nonneg.md) | 88 | `result-track:544ba25e016a04b76201320111d1b894a2b9863583c09954235f20069c94bc68` |
| 16 | `theorem` | [sin_theta_pos](../../../../MeasureAndIntegration/Functional.lean/declarations/sin-theta-pos.md) | 93 | `result-track:760ee9eb0f42292e08104983672dbee979fe9f492a6e9f538d8ee9e835e3cffe` |
| 17 | `theorem` | [cos_theta_pos](../../../../MeasureAndIntegration/Functional.lean/declarations/cos-theta-pos.md) | 98 | `result-track:cdadcdb8556ef7301dd80b748fa28c6b2dcee938c4cc3f0819cc02b758206bfe` |
| 18 | `theorem` | [cStar_denom_ge](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar-denom-ge.md) | 105 | `result-track:c0bfebc942822f42b0cc6ce362fa24c5fd9651e53c6c7f30ce92a1b77875dffe` |
| 19 | `theorem` | [cStar_pos](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar-pos.md) | 112 | `result-track:bee8a60eea445c349f8ec545c22d0061f7cfb777af196b9b82d3986fb83fff22` |
| 20 | `theorem` | [cStar_lipschitzOn](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar-lipschitzon.md) | 121 | `result-track:5e614c9a38a61d7399bd05646842f9084f2ae47684ab2eb737962283a3e8f8fa` |
| 21 | `theorem` | [cStar_continuousOn](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar-continuouson.md) | 220 | `result-track:022ed2bb23141a2d0115dd24a721df0f3650cdb70a569478e5ddbc9bb550b28c` |
| 22 | `theorem` | [cStar_eq_tan_form](../../../../MeasureAndIntegration/Functional.lean/declarations/cstar-eq-tan-form.md) | 229 | `result-track:8de3587fa2ab7516911e5f61c23f22f4b6d3ebd838c4cf1d3f4ec9c19caf0ffb` |
| 23 | `theorem` | [sqrt2_mul_half](../../../../MeasureAndIntegration/Functional.lean/declarations/sqrt2-mul-half.md) | 245 | `result-track:11ef8dff012a7699e9b4a2e6e8a69b2c45d02ffa2a7b10f3805395d5b9db4e5e` |
| 24 | `theorem` | [sqrt2_mul_neg_half](../../../../MeasureAndIntegration/Functional.lean/declarations/sqrt2-mul-neg-half.md) | 254 | `result-track:e3d4be2f2ad154c5e45392826bdea7d30b51a2160b7d0c0715459df48d108746` |
| 25 | `theorem` | [aStar_eq](../../../../MeasureAndIntegration/Functional.lean/declarations/astar-eq.md) | 259 | `result-track:55679ff82e3bfa49911c39eabb2a58f19ca8a959cf08ee42483c643d788490b5` |
| 26 | `theorem` | [bStar_eq](../../../../MeasureAndIntegration/Functional.lean/declarations/bstar-eq.md) | 273 | `result-track:8011062da756aea90ac092c6bcc48d69bff349623a6afb8aad8b43744a3121c5` |
| 27 | `theorem` | [hasDerivAt_left](../../../../MeasureAndIntegration/Functional.lean/declarations/hasderivat-left.md) | 292 | `result-track:cfebc74fa97aea1ac305bfaaaf2208983a4b9bc197a7220335789b17695b38dc` |
| 28 | `theorem` | [hasDerivAt_right](../../../../MeasureAndIntegration/Functional.lean/declarations/hasderivat-right.md) | 306 | `result-track:6bf574cd049998b8d9055622336b822706c3e44c77d836bf1000761aa2e007da` |
| 29 | `theorem` | [kernel_eq](../../../../MeasureAndIntegration/Functional.lean/declarations/kernel-eq.md) | 321 | `result-track:eb056c64cc2269ff49f3fd1a52374b9b4fd737219fee13a01df236f307327970` |
| 30 | `theorem` | [jStar_eq](../../../../MeasureAndIntegration/Functional.lean/declarations/jstar-eq.md) | 385 | `result-track:8110518bace4433911ea040b1af483cbaf9ecd281b38d4709eb9ad963a21812e` |
| 31 | `theorem` | [cFun_vStar](../../../../MeasureAndIntegration/Functional.lean/declarations/cfun-vstar.md) | 432 | `result-track:ca46f588882e3a30c064196576b8b8ab79cef488b741fe005f8a6b99548c2630` |
| 32 | `theorem` | [theta_one](../../../../MeasureAndIntegration/Functional.lean/declarations/theta-one.md) | 461 | `result-track:043ac36bc9d26c31b6b8456771a8ac47879b2a7b2d439c5abb1ffe8c1f1ec3ff` |
| 33 | `theorem` | [HD_one](../../../../MeasureAndIntegration/Functional.lean/declarations/hd-one.md) | 464 | `result-track:9ecbfde6bb92e851ede7655b3a4d77650fb4c85ec4abc37b401fe24a3df8ad28` |
| 34 | `theorem` | [jStar_closed](../../../../MeasureAndIntegration/Functional.lean/declarations/jstar-closed.md) | 483 | `result-track:442cfbf53391fd2681f67c1ccd3d060676f1490825c42ebf0169c7315439eba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba666ad0ba41d4c9847a855da9f1d4c3307c634e16f5b2b1ba8cfa1d691831f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant3fd7fd89639e936ffff88ee34643efb8291a9ef29422f8335192c2ef80ed7c3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
