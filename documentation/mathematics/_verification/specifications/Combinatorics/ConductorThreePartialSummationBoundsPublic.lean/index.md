# Verification target: Conductor Three Partial Summation Bounds Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ba111dcdee7875e51b1b98d5941203e6e28e2a3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ba111dcdee7875e51b1b98d5941203e6e28e2a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [log_increment_nonneg](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/log-increment-nonneg.md) | 27 | `result-track:ba7048b975ab6b17fffda3bd9efef3c6d182ac322a54af4518f7d990db31f6d5` |
| 2 | `lemma` | [sum_log_increment](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/sum-log-increment.md) | 37 | `result-track:87130921f2d8691c5d5866bae18e21bfc0bf5261567e7010d611e34d8bce0ad1` |
| 3 | `lemma` | [residueDifferenceCriticalRate_mono](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/residuedifferencecriticalrate-mono.md) | 47 | `result-track:131427ddd06dec629c6e10ef3f477934978b0fcc6b971b0e3c71a6a3a84b0e21` |
| 4 | `lemma` | [twistedPsiCriticalRate_eq_residue_mul_log](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/twistedpsicriticalrate-eq-residue-mul-log.md) | 63 | `result-track:dfda426e9322cbd5a2eee18b511688eb7e74b2b0c854d74e35ab369eb60437fe` |
| 5 | `def` | [earlyPrimeMass](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/earlyprimemass.md) | 69 | `declaration-track:98811fc326c2208ccef5cf2c25a74754f4ab0db924ffe7d1748c352697d2c42b` |
| 6 | `lemma` | [earlyPrimeMass_nonneg](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/earlyprimemass-nonneg.md) | 72 | `result-track:60ad14297cdffe7b0a7a845063d3baa336028903a498a94843b021200c510d06` |
| 7 | `lemma` | [abs_primePartial_le_earlyPrimeMass](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/abs-primepartial-le-earlyprimemass.md) | 76 | `result-track:9fe897d02c06ea37c50bf8d70b84f3a535b89ae4462c8ff8912bdea821d25b01` |
| 8 | `theorem` | [theta_bound_of_prime_bound](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/theta-bound-of-prime-bound.md) | 85 | `result-track:1a7c4279ee01a8e7f0934c41d46c6f914fe2ad7c1a033b49220a1cb88d0c62cb` |
| 9 | `lemma` | [log_increment_le_inv_nat](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/log-increment-le-inv-nat.md) | 177 | `result-track:aea2d398ae39ebf4324362ba4a44a3841c11a323da8e53dbcdb9ddd0c3c0c959` |
| 10 | `lemma` | [reciprocalLog_sub_nonneg](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/reciprocallog-sub-nonneg.md) | 193 | `result-track:73534b2b7a07f779cc66644b40a8185f3d27df2cd99f9d973f30afe4724e07dd` |
| 11 | `lemma` | [criticalRate_mul_reciprocalKernel_le_invSqrt](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/criticalrate-mul-reciprocalkernel-le-invsqrt.md) | 207 | `result-track:f6e4f6542ba221e37fb13a8cd28b1b45cd607fc38eb91693cad3ac02a2fc5db8` |
| 12 | `lemma` | [invSqrt_le_three_mul_sqrt_increment](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/invsqrt-le-three-mul-sqrt-increment.md) | 258 | `result-track:0272b87c445fde0113bc4b6255ec599e860e7035e00cc6a7d383d7e1d544e2d9` |
| 13 | `lemma` | [sum_sqrt_increment_range](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/sum-sqrt-increment-range.md) | 292 | `result-track:3fd537c8b20ede2216e2739f1c5c1574c4650ab2a0529e1bdf48d6d307a7e478` |
| 14 | `lemma` | [sum_invSqrt_Ico_le](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/sum-invsqrt-ico-le.md) | 303 | `result-track:1a0707669f6330f1ca0798a4aa48a35ae9df210f11ec1607b014901642f96f25` |
| 15 | `def` | [earlyThetaKernelMass](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/earlythetakernelmass.md) | 321 | `declaration-track:16d0d3a4cbfca1673649a8dd197b2e285d6b520004eb923296d05171af38ee60` |
| 16 | `lemma` | [earlyThetaKernelMass_nonneg](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/earlythetakernelmass-nonneg.md) | 326 | `result-track:fac2c40481d8a7522f277caa0d97279c8480b5132e75821fda2fd6064700d21f` |
| 17 | `theorem` | [prime_bound_of_theta_bound](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/prime-bound-of-theta-bound.md) | 334 | `result-track:7dd29853651fe7c83c742b772f13bb9993da2d4e1fe1d59f119a8f5b095b3f23` |
| 18 | `theorem` | [twistedThetaCriticalBound_iff_primeCharacterCriticalBound](../../../../Combinatorics/ConductorThreePartialSummationBoundsPublic.lean/declarations/twistedthetacriticalbound-iff-primecharactercriticalbound.md) | 483 | `result-track:14d2df74a80cf8d68d9122e2c3ac2de66da804b5a0c07ccde31d6c8ef165e94e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efe2f4a818cd6c23423ce069b429ad4c4cade57ebeaa07463b7c12cd99f01016 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummationBounds/Variant07d7f760804ad1cfed43722690a25fcbb8f069611ca275544123327efdf383e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
