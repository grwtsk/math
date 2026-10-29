# Verification target: The Rate Needed To Recover An Additive Signed Bound Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1adfa4c89fd5f6622ef787c6dcf52bcd940f8764",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant06599f2f00421fa61668017e8aafab96b94a24db9c9113f136c2b4d21f035197.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1adfa4c89fd5f6622ef787c6dcf52bcd940f8764`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant06599f2f00421fa61668017e8aafab96b94a24db9c9113f136c2b4d21f035197.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant06599f2f00421fa61668017e8aafab96b94a24db9c9113f136c2b4d21f035197.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalization.md) | 25 | `declaration-track:41a7bb495adb75896a808002b5f6ac41dc7c3f87f8fd26c5f6fb5f1cef88597b` |
| 2 | `def` | [modelShell](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelshell.md) | 28 | `declaration-track:fd953c4d9bb12ed97f1d64da1be314e9b0672416551cea573e996be5630b2b70` |
| 3 | `def` | [modelComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelcomplement.md) | 31 | `declaration-track:234183c5339197b999fb783a6ba2aec0262fe91147d59e3926550b6add8c2946` |
| 4 | `def` | [modelResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelresidual.md) | 34 | `declaration-track:19d6cca0edfa8a6b817f2857b433defb5755fcdc921bd788f4f419283bfc201b` |
| 5 | `def` | [balancedComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/balancedcomplement.md) | 37 | `declaration-track:27e39027158f74f38d4e50cd5d378758ffbca292d49f21bdd7de9786cdd71772` |
| 6 | `theorem` | [normalization_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalization-pos.md) | 39 | `result-track:8f0c030f9138cc51542dbdd8ff9696ebfe14a59cabe001069571e1e89c87713c` |
| 7 | `theorem` | [normalized_cap_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalized-cap-iff.md) | 45 | `result-track:a09b103c1479ee49f7685ebcf63974b7ed49760195b4b2754f35567161ccc0e1` |
| 8 | `theorem` | [modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelresidual-eq.md) | 52 | `result-track:7fa7b07606b088a98a1859fcbfbcff022c5c1f81bd2c63203b5a1b2f2cc07699` |
| 9 | `theorem` | [normalized_modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalized-modelresidual-eq.md) | 59 | `result-track:08cfd5ea1e9a266423b8d0c87788298cc7596d87cc07486303a0afccaa0047f3` |
| 10 | `theorem` | [balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/balanced-residual-eq.md) | 66 | `result-track:419f759dbcd095e00ddf29bb4eb6f4d263902a6a8d8040af6cfeb9b8be99acb3` |
| 11 | `theorem` | [normalized_balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalized-balanced-residual-eq.md) | 71 | `result-track:524ab7536984667964e8593b8dd8a6491f37a41253a495f0e9041a29867910ac` |
| 12 | `theorem` | [normalization_exp_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalization-exp-eq.md) | 76 | `result-track:fd1174aff4be311cddb251966c2921c23a87d92afbf79bd9392069b801c30521` |
| 13 | `theorem` | [normalized_modelResidual_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/normalized-modelresidual-tendsto-zero.md) | 82 | `result-track:4a0183e63916cd9f0f8072f03d6e680cecb9c4995dd39d0317cdf8075dcdbb93` |
| 14 | `theorem` | [exp_div_tenth_power_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/exp-div-tenth-power-lower.md) | 92 | `result-track:c965d05a57067e83ffc91bc97eca805142b636bc4e0cb7785d79884238b895d1` |
| 15 | `theorem` | [modelResidual_exceeds_any_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelresidual-exceeds-any-cap.md) | 102 | `result-track:90a77e1bc83f2f9c26072ba10a2dcd89582b6a96962af7f67038b0999c2c1b50` |
| 16 | `theorem` | [modelResidual_has_no_eventual_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheRateNeededToRecoverAnAdditiveSignedBoundAlternative.lean/declarations/modelresidual-has-no-eventual-upper-bound.md) | 119 | `result-track:29dda28848d4bb4a8c9b389b8ba02ed32cabfd25aeb4ebe594cdab1d70a0ffb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a0835778c0c0c64f660abeb564cc5f1ced4c1c250d7bdaa93a7be2c103cc5be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant06599f2f00421fa61668017e8aafab96b94a24db9c9113f136c2b4d21f035197.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant06599f2f00421fa61668017e8aafab96b94a24db9c9113f136c2b4d21f035197.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
