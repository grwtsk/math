# Verification target: Has Gaussian Law Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "219f109b0f4320e9805cf381ad48dbd4e3ab0e34",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `219f109b0f4320e9805cf381ad48dbd4e3ab0e34`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.Fernique` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [HasGaussianLaw.congr](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/hasgaussianlaw-congr.md) | 44 | `result-track:f03f9c358a39acb5eb2aa8053beef5e5059d261f64422653b09cd99178bde7b4` |
| 2 | `lemma` | [IsGaussian.hasGaussianLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/isgaussian-hasgaussianlaw.md) | 51 | `result-track:73eab90c5a9b6be7f567cf9cc68d5611d1bca7a0f79cba6fcec4a7c610e1f620` |
| 3 | `lemma` | [IsGaussian.hasGaussianLaw_id](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/isgaussian-hasgaussianlaw-id.md) | 56 | `result-track:214647f822136ffb7571caa636677111915bc043f045ceb46d683cd1f802740e` |
| 4 | `lemma` | [HasGaussianLaw.isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/hasgaussianlaw-isprobabilitymeasure.md) | 59 | `result-track:9329a736528b8a3d303b2ae037baae6127267927af4573dd01a18934dae0e460` |
| 5 | `lemma` | [HasLaw.hasGaussianLaw](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/haslaw-hasgaussianlaw.md) | 64 | `result-track:353c90edb458a79b2dea1f5b36a2992feb5278b6f2a53b22d4b1429a0f5b47ff` |
| 6 | `lemma` | [HasGaussianLaw.map_of_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/hasgaussianlaw-map-of-measurable.md) | 68 | `result-track:525e10154a3968f548d6ba298fc5048319ed7e150b87368d19e0a635066ac668` |
| 7 | `lemma` | [HasGaussianLaw.map_eq_gaussianReal](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/hasgaussianlaw-map-eq-gaussianreal.md) | 78 | `result-track:b795a52bb04453866afd8a71a6f919da9a5de0346506364fb0c8a7675a7c2877` |
| 8 | `lemma` | [of_subsingleton](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/of-subsingleton.md) | 90 | `result-track:c6b4efded3c9745632ba2a31d843419114ab19e0c5a05d17229063b303883293` |
| 9 | `lemma` | [charFun_map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/charfun-map-eq.md) | 94 | `result-track:eaf251613319ad6d0cf192384465267fe37f0a8531b067eaa6a25952676e9bcb` |
| 10 | `lemma` | [_root_.ProbabilityTheory.hasGaussianLaw_iff_charFun_map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/root-probabilitytheory-hasgaussianlaw-iff-charfun-map-eq.md) | 99 | `result-track:3ea1fa99d1893ac8aacc680e3fa69ee378235c4cc5d845502cd3867d7b6b8331` |
| 11 | `lemma` | [charFunDual_map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/charfundual-map-eq.md) | 111 | `result-track:0ae9bd3ed1a74836b3e60a2226d3c67ca17ae043d6e4f165409bbd1ab092ab82` |
| 12 | `lemma` | [_root_.ProbabilityTheory.hasGaussianLaw_iff_charFunDual_map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/root-probabilitytheory-hasgaussianlaw-iff-charfundual-map-eq.md) | 116 | `result-track:501b0c8cfda50052191fb6c4513b52828cc8f33c89d963e175a009912403ef3c` |
| 13 | `lemma` | [charFunDual_map_eq_fun](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/charfundual-map-eq-fun.md) | 126 | `result-track:503b2ac84c0e5556664b3ae7c1234bf12a6c3ff2056bbe7d48178b1868bb3216` |
| 14 | `lemma` | [memLp](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/memlp.md) | 131 | `result-track:5fdc0c6c3bfe136291590b2bd5396356f4f6b00d82860d6e183bd5bb1f8ca641` |
| 15 | `lemma` | [memLp_two](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/memlp-two.md) | 138 | `result-track:f9571a561edfc0fb06c1fcd2bb8452570404752665d10f2d0532d476c9889af9` |
| 16 | `lemma` | [integrable](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/integrable.md) | 141 | `result-track:67776e9777ae7ecd89e8dd80af19913d18d9a36ba29d21de0ec909d752958d23` |
| 17 | `lemma` | [map](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/map.md) | 147 | `result-track:bf50eff9e123cc67e39cdd7a0ca4390c048841d1cbff7410ff0345617f01099a` |
| 18 | `lemma` | [map_fun](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/map-fun.md) | 150 | `result-track:4121424571f1889fe5f8c42ce386ef1d40f05d2eabb1dc20073eec9525f89281` |
| 19 | `lemma` | [map_equiv](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/map-equiv.md) | 153 | `result-track:7ea0710d87eed430a8fc5147b66c06971be6c8e267a3544d80eef361e80a6e45` |
| 20 | `lemma` | [map_equiv_fun](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/map-equiv-fun.md) | 156 | `result-track:b1864e1fd64fee6fca02e95a3bc9efb0d76fb9dbd0cb85a8448f0a76b6daeb45` |
| 21 | `lemma` | [smul](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/smul.md) | 161 | `result-track:3c2d62e01c6a686fbc430fb57b5f3963496e20f4ad65bead6c5f76700474896d` |
| 22 | `lemma` | [fun_smul](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fun-smul.md) | 164 | `result-track:a3417d6b297f08abb6f9af12f0915e8e0ef2cf5e2a1ed31319860e920858c85b` |
| 23 | `lemma` | [neg](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/neg.md) | 167 | `result-track:5a9333dad53fb0327dbdef93a48244e1621c12f32983c7254f9a82e72f1c4350` |
| 24 | `lemma` | [fun_neg](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fun-neg.md) | 169 | `result-track:cc303a01be6c9c0da6405d018944386f0c6ffc22b4847146897144a34a3f09ce` |
| 25 | `lemma` | [toLp_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/tolp-prodmk.md) | 176 | `result-track:c8c1b06af412b24afc0a41ca3001ea23040fe3298bad8e2d13493db2088ff6a2` |
| 26 | `lemma` | [fst](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fst.md) | 182 | `result-track:02e5d7c2350ddcc89f9b1f9caa38e4e3c1a6219f76cb7726d8eba669a80ba16e` |
| 27 | `lemma` | [snd](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/snd.md) | 186 | `result-track:f128730fb46dac7b93bba844dde26faf3e3449313eebf21e11f9b9eeaf634a79` |
| 28 | `lemma` | [add](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/add.md) | 191 | `result-track:5ec8f0070f402a30e9bc4b864eb6956e487f8d78126a342a5722d91fc05a7964` |
| 29 | `lemma` | [fun_add](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fun-add.md) | 194 | `result-track:ab3da752683cdd665abddf7397336c5cf79ca64176911e3dcf92066eb1380547` |
| 30 | `lemma` | [sub](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/sub.md) | 198 | `result-track:791989c6ff9bdf422fca9eb4dc75c0fa0591dfbf3801acae4321fbb2382753f5` |
| 31 | `lemma` | [fun_sub](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fun-sub.md) | 201 | `result-track:fb8a909cf0487359c492c826134a377e9420c294753dd31552e5a926af57f358` |
| 32 | `lemma` | [eval](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/eval.md) | 213 | `result-track:c5057ef4d84c0f7950570db840aae21cac7636cb9adbfcd00c48129da766e26d` |
| 33 | `lemma` | [prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/prodmk.md) | 218 | `result-track:442b70a9eda1fc53fad43f258a645e2a7326312106f08c23fac4a65363fd30b7` |
| 34 | `lemma` | [toLp_pi](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/tolp-pi.md) | 223 | `result-track:5c85d18b54adae9592d1e299fb0937696d4dd6dfbe7c5643400ce92ea2ec2760` |
| 35 | `lemma` | [sum](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/sum.md) | 230 | `result-track:9b923b191387121a87f54bdda0077f46c4202ddd90caaffc76ee0d9ef09d727e` |
| 36 | `lemma` | [fun_sum](../../../../ProbabilityTheoryAndStochasticProcesses/HasGaussianLawBasicPublic.lean/declarations/fun-sum.md) | 237 | `result-track:b3166495b5e5abef7ea55b0d88eaed27e08a3cbc4e7742d1762d798db91bab75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ae4d8467bcdbb983083c40fca8a70ef4333453fe6df6679ad7743a8e9aebc5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variantd7c068328671da9d3c753e7f1b2379b197d1a650753b2d3e67c5eaa2fd70816c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
