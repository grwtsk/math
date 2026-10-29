# Verification target: Sobolev Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "303ea1b6f496d81419c8ef0b11c35c489949a3d0",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `303ea1b6f496d81419c8ef0b11c35c489949a3d0`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean.json)

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
| 1 | `def` | [besselPotential](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential.md) | 73 | `declaration-track:eeae1b6d9dd8320491df675629639a84ceeb251da7c530ae37d13e7b80ea27ca` |
| 2 | `theorem` | [besselPotential_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-zero.md) | 78 | `result-track:86f96538695e5060c84a81c00cce7137f61d872109babb78b2d59956cc4b90ba` |
| 3 | `theorem` | [besselPotential_besselPotential_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-besselpotential-apply.md) | 83 | `result-track:65a98029b7a51c043c219ae6155320b639ea23dfd43f078c6cf6ac74cf21c1d5` |
| 4 | `theorem` | [besselPotential_compL_besselPotential](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-compl-besselpotential.md) | 96 | `result-track:00175417265d05171366c994a6422b3a2d445c1a546654ec5ccbf04f4e02f6bb` |
| 5 | `theorem` | [besselPotential_neg_apply_eq_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-neg-apply-eq-iff.md) | 101 | `result-track:cfdd4e78e94704ee0d1e78d5879bd1cc8d4fbbdbb6155e3c1c45f2f0d3165c17` |
| 6 | `theorem` | [besselPotential_neg_one_lineDerivOp_eq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-neg-one-linederivop-eq.md) | 108 | `result-track:56c7458ba410cc532018bb002c9572e5eeefaf16bb828083d06beb9d3095ad14` |
| 7 | `theorem` | [besselPotential_neg_two_laplacian_eq](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/besselpotential-neg-two-laplacian-eq.md) | 119 | `result-track:992fa45ec270091b7d7b9389d508dc174047cd13a6b88fe8c67789fa553f0df0` |
| 8 | `theorem` | [fourier_besselPotential_eq_smulLeftCLM_fourier_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/fourier-besselpotential-eq-smulleftclm-fourier-apply.md) | 138 | `result-track:142effd7a6dfe11e23d3b2b860dfceb8e3447f9e2fd883b7d11c3bbfc798b640` |
| 9 | `def` | [MemSobolev](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev.md) | 153 | `declaration-track:e4067ea6ccff5a9a6d7ec076c6ff39f937380877e573a79f2ae07272b2a06370` |
| 10 | `theorem` | [memSobolev_zero_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-zero-iff.md) | 157 | `result-track:8e52ded4ed3278d6e666d256c0fd722601b0c4a0a89a753f9e1be874e54fec59` |
| 11 | `theorem` | [MemSobolev.add](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-add.md) | 161 | `result-track:9bbe4afb2122685b80a8f2f56a4da4dc7d4284cd378951104c357576bfafbec2` |
| 12 | `theorem` | [MemSobolev.sub](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-sub.md) | 169 | `result-track:d3eb77d86c74c4af36261c8706418eb95ac1840b9c44414978741d22fa671270` |
| 13 | `theorem` | [MemSobolev.neg](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-neg.md) | 177 | `result-track:48fb2db6b1e0b32190298784cde4c4eaa51b0c45df36acb313364b636921e482` |
| 14 | `theorem` | [MemSobolev.smul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-smul.md) | 184 | `result-track:c24369e26c7f788db8d6ba25c431eb63fb764eb66199c638520e3b7c2c565da8` |
| 15 | `theorem` | [memSobolev_fun_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-fun-zero.md) | 193 | `result-track:c6fe64bc03f48c4a3f9bee51b54f3843198b491910b68edb2010f7d6ec679797` |
| 16 | `theorem` | [memSobolev_besselPotential_iff](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-besselpotential-iff.md) | 200 | `result-track:a5dda53eae613acb93fdd978130b56f8e5cd16bc1467d1d6749e9914b504d186` |
| 17 | `theorem` | [_root_.SchwartzMap.memSobolev](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/root-schwartzmap-memsobolev.md) | 205 | `result-track:a7414a476e17528aec30577805a08576fff1fc72526fe72c8768282c401d8392` |
| 18 | `theorem` | [memSobolev_iff_exists_smulLeftCLM_fourier](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-iff-exists-smulleftclm-fourier.md) | 222 | `result-track:96755f287112fa39f959ed09a3733691bf1fdda982029581c91cdd07592d82c7` |
| 19 | `theorem` | [memSobolev_zero_iff_exists_fourier](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-zero-iff-exists-fourier.md) | 237 | `result-track:6fdfc5b3f2e3f153e2c0f99e07d4f3d54c6546da7bbe9929416cf38c00ec88bf` |
| 20 | `theorem` | [MemSobolev.fourier_memL1](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-fourier-meml1.md) | 245 | `result-track:a5441b0f3ee3752274da0d281b7b4c4a9b85c20f5b49fc7fb66c88c4de63fc60` |
| 21 | `theorem` | [MemSobolev.fourierMultiplierCLM_of_bounded](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-fouriermultiplierclm-of-bounded.md) | 285 | `result-track:f9e5c400a4829e3f65d57f90772285788448cb50fb746c368dc409bf3b18992d` |
| 22 | `theorem` | [MemSobolev.mono](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-mono.md) | 302 | `result-track:af369d4fa45543d0f61854b6ecbef5f02a1b5cb17da71a33654a4a235bca3db8` |
| 23 | `theorem` | [MemSobolev.lineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-linederivop.md) | 320 | `result-track:7ffded578738fccef93d0367c2389c4a0fbef0bd4462ef2798d95990edbeb4e8` |
| 24 | `theorem` | [MemSobolev.laplacian](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SobolevPublic.lean/declarations/memsobolev-laplacian.md) | 348 | `result-track:92b8660762a4a63c9954a4ba7475b74f84f054c3bf5f2b475dce240ade3cb5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fbf009968493796a0ebe07ccab99e2cbbd922f8a0593638d717b52d8d4fa500 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/Sobolev/Variantd87906553d2b24cf330a76b847c0cc09c52d5b135f3944fe8027e2fe6e614b65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
