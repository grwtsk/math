# Verification target: GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc10a16ce1fc63a2289d045f88f20d7e6855f5a6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/TwinMangoldtExpansion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc10a16ce1fc63a2289d045f88f20d7e6855f5a6`.

Source path: `GRWTSK/NumberTheory/Primes/TwinMangoldtExpansion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/TwinMangoldtExpansion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT`](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinShiftTwoCRT.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twinMoebiusLogExpansion](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinmoebiuslogexpansion.md) | 33 | `declaration-track:beb9259c2d9dc1bca886e47d567bbd27a78aaf9cd8e121293b3b3af04c505e2f` |
| 2 | `theorem` | [twinMoebiusLogExpansion_eq_vonMangoldt](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinmoebiuslogexpansion-eq-vonmangoldt.md) | 38 | `result-track:7f30fe7f263e1aad8ddf816f575b4e5bbbe45260810d79f89d18ef613b4f42a2` |
| 3 | `def` | [twinMangoldtCorrelation](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinmangoldtcorrelation.md) | 50 | `declaration-track:d3197d43ef51a03d783804ec814dfc613bd754aaab1b012d80ca137e769f8cb8` |
| 4 | `def` | [twinDivisorKernelTerm](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twindivisorkernelterm.md) | 54 | `declaration-track:467842f2936e2e6e884575c977d4cdc19395a0a33ec7efa73ebf20e74e98e0cd` |
| 5 | `def` | [twinDivisorCorrelation](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twindivisorcorrelation.md) | 61 | `declaration-track:b3866b584783defa7cdb864424c41fbe06aea8ce83d06196b777bc4ffde9c655` |
| 6 | `theorem` | [twinMangoldtCorrelation_eq_divisorCorrelation](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinmangoldtcorrelation-eq-divisorcorrelation.md) | 68 | `result-track:02869ad11b37115e423b92afb366c76dfd8cf84336469245ba434e13102880f1` |
| 7 | `theorem` | [twinDivisorPair_compatible](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twindivisorpair-compatible.md) | 86 | `result-track:94ce5ba8b4f08295ea109babd3199818a532a1345fced1e3d251d0882a49aee4` |
| 8 | `def` | [twinCompatibleDivisorCorrelation](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twincompatibledivisorcorrelation.md) | 102 | `declaration-track:d0e23e3dba5a07be08ac8b88ef61c6c3a6033e878279a326deea0caa13258f11` |
| 9 | `theorem` | [twinDivisorCorrelation_eq_compatible](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twindivisorcorrelation-eq-compatible.md) | 113 | `result-track:35451c6667985d582425092e99756e1c40902fcd613655dd2aba364ab32ca0db` |
| 10 | `def` | [twinSmallDivisorSource](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinsmalldivisorsource.md) | 128 | `declaration-track:242790e82d3421d544ff8551f74d4b1c760bfa297b6a52f225b83c07165df715` |
| 11 | `def` | [twinSignedDivisorResidual](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinsigneddivisorresidual.md) | 141 | `declaration-track:35e6af4cd71f1aeb8131a58129b5396d6bdbe5b9f15d8544ea8678b80775b726` |
| 12 | `theorem` | [twinCompatibleDivisorCorrelation_eq_small_add_residual](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twincompatibledivisorcorrelation-eq-small-add-residual.md) | 153 | `result-track:c4b38cceeff61030e314336fe99ae0c37661700d8965f09f194a3a21f7985c68` |
| 13 | `theorem` | [twinMangoldtCorrelation_eq_small_add_residual](../../../../../NumberTheory/MultiplicativeNumberTheory/TwinMangoldtExpansion.lean/declarations/twinmangoldtcorrelation-eq-small-add-residual.md) | 176 | `result-track:84f56108314d64e5cac7b00f173d9263b0bdcdcb5170fd9473eb9c658cb9beab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2dd75ecd7854b6b77d2aeb8aa008bffd2ef24e8facf17d82fe26d55a3611c8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/TwinMangoldtExpansion.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/TwinMangoldtExpansion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
