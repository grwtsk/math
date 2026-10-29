# Verification target: Cover Entropy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987f6dbe76df7782caa08b769b82ea34d94c03ab",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987f6dbe76df7782caa08b769b82ea34d94c03ab`.

Source path: `GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.ExpGrowth` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENatENNReal` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.TopologicalEntropy.DynamicalEntourage` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynCoverOf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof.md) | 81 | `declaration-track:3af26f6c0196e0f3382ca09f9e7bdf0e60cb459f6295a21124cb660a6632ef62` |
| 2 | `lemma` | [IsDynCoverOf.of_le](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-of-le.md) | 84 | `result-track:60542a5f734d5a87fb4e83f85d48d0c21b4e1c9c92efebcaed9acb72ae8e7b34` |
| 3 | `lemma` | [IsDynCoverOf.of_entourage_subset](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-of-entourage-subset.md) | 89 | `result-track:55e024555af418c6d9084664cea5296d595d4a57e972e21a3009f9b392912beb` |
| 4 | `lemma` | [isDynCoverOf_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-empty.md) | 95 | `result-track:50729399babb548b50e680e12f03d99e8f064f95dca7c20e543efb1e68d6baff` |
| 5 | `lemma` | [IsDynCoverOf.nonempty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-nonempty.md) | 99 | `result-track:7498bb8df5cbfe669c2ba4a628586a8714de523d4ac511943e499f280a8b9204` |
| 6 | `lemma` | [isDynCoverOf_zero](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-zero.md) | 105 | `result-track:715f05eb278ab820e8a6a0e9ad161e8e372f9e0d8c41c0fb2ff9bca79256fa84` |
| 7 | `lemma` | [isDynCoverOf_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-univ.md) | 112 | `result-track:4363a459fec941e6884f676264e0bf4b33fc93d17fb8355809273359d341b190` |
| 8 | `lemma` | [IsDynCoverOf.nonempty_inter](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-nonempty-inter.md) | 118 | `result-track:c728d49572d88b1247734e0941efe64304a066ea056e66e71da06d74dd9ee94c` |
| 9 | `lemma` | [IsDynCoverOf.iterate_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-iterate-le-pow.md) | 137 | `result-track:a9aab90c79cb4015a4b1b4674dd3157074d76237f0122df17b13d7dbf483d7b8` |
| 10 | `lemma` | [exists_isDynCoverOf_of_isCompact_uniformContinuous](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/exists-isdyncoverof-of-iscompact-uniformcontinuous.md) | 208 | `result-track:76447da3fc36dc39f8482ac467ddef92d4d013ce93bebf507b4d70427c26171c` |
| 11 | `lemma` | [exists_isDynCoverOf_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/exists-isdyncoverof-of-iscompact-invariant.md) | 217 | `result-track:44e3739a81175ab06deb22c40f2f330d31bad828a6aae338f4cb7ab69467aff9` |
| 12 | `def` | [coverMincard](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard.md) | 233 | `declaration-track:4820bf285e68d407d6375b5375bbfd2ffad693717d08ff01b2aefac91747bc2f` |
| 13 | `lemma` | [IsDynCoverOf.coverMincard_le_card](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-covermincard-le-card.md) | 236 | `result-track:22f48e0917cc33de6f9a426abf442a5ebe21bd3a45cff1ef7c9162a2a82d586b` |
| 14 | `lemma` | [coverMincard_monotone_time](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-monotone-time.md) | 241 | `result-track:780052d8811e4570b5b6c5aa07020c45288ce9fd9d5c203a307debdcc64ef5a5` |
| 15 | `lemma` | [coverMincard_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-antitone.md) | 245 | `result-track:09f66a03f4f5e3e9ba8e3809bb80dc0c13bf37e89d50f53e78dce967fad36e96` |
| 16 | `lemma` | [coverMincard_finite_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-finite-iff.md) | 249 | `result-track:ac6b0667e287086d887adc30121a855248bc042449731f9732dbac3f31197aa2` |
| 17 | `lemma` | [coverMincard_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-empty.md) | 270 | `result-track:2b74caa960cd9c304ccfd00b8d33104a6bf8bbbbbf4a4ad3187de604109b9e70` |
| 18 | `lemma` | [coverMincard_eq_zero_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-eq-zero-iff.md) | 273 | `result-track:bf28a3700e9d5668aba13aeb9b4c1c55024a6bfab5c25d6300c23b058c1eb5b1` |
| 19 | `lemma` | [one_le_coverMincard_iff](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/one-le-covermincard-iff.md) | 282 | `result-track:659756631827efbfc35cd8dd884a70157258018e094bd76f9babe124ec03a413` |
| 20 | `lemma` | [coverMincard_zero](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-zero.md) | 287 | `result-track:18b7db5223c3eaca6733da548ad87859ad435b5581644501c2f48b596c7b1c8f` |
| 21 | `lemma` | [coverMincard_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-univ.md) | 296 | `result-track:a0a01876a8a708ad20e45592edcbd4d2240da5262500ba4c253e528bde8ee836` |
| 22 | `lemma` | [coverMincard_mul_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-mul-le-pow.md) | 305 | `result-track:cfe5070ee090203efd6dfbbe4456f95223112bc50e1f17f53cbd4492bf5cba91` |
| 23 | `lemma` | [coverMincard_le_pow](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-le-pow.md) | 319 | `result-track:fea1d1301dcb829a6cb8145354d9461bff0bd383c3d28e111d885786fda35abc` |
| 24 | `lemma` | [coverMincard_finite_of_isCompact_uniformContinuous](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-finite-of-iscompact-uniformcontinuous.md) | 325 | `result-track:120e43b8ce9efa9d2361395bfc5686786c53315aa73ecac837f6db41129e89ef` |
| 25 | `lemma` | [coverMincard_finite_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/covermincard-finite-of-iscompact-invariant.md) | 332 | `result-track:aef4bae7efe423c49714adfc864751030df11858ab4d7b2ab43ee74c4608c572` |
| 26 | `lemma` | [nonempty_inter_of_coverMincard](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/nonempty-inter-of-covermincard.md) | 341 | `result-track:aba00449ae92f22a83abe8d5106031a7d367352e6009006cd477622fb580f766` |
| 27 | `def` | [coverEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage.md) | 369 | `declaration-track:bae061f1bb9562afc8b944c60bd53893395eca9bc8db334b690170552d3725eb` |
| 28 | `def` | [coverEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage.md) | 375 | `declaration-track:d9c2b90e35e3d781fc76e19502950be2858351a78765c827b16c3720e64e0cfd` |
| 29 | `lemma` | [coverEntropyInfEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-antitone.md) | 378 | `result-track:79f2fef0fb99aa27e5fb919f0e5b5ddfc586f11322dbb6fa90be19e1e354dddf` |
| 30 | `lemma` | [coverEntropyEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-antitone.md) | 382 | `result-track:074c6756be224145ea1fd58be74e4fd39bbb97eec71f15fc0122101716e95dd1` |
| 31 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-le-coverentropyentourage.md) | 386 | `result-track:4371d4d5f5ec74fd05b2dfe69c515da5986942fa58ebdf93f6f8db48f44cb30c` |
| 32 | `lemma` | [coverEntropyEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-empty.md) | 391 | `result-track:081b0887fb23efadb9acc186a25b3dd383978d50a77841a004ca9517cecc3a49` |
| 33 | `lemma` | [coverEntropyInfEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-empty.md) | 397 | `result-track:c85ffa42cdf9b75b15f8dbfd9059c7236c0ac3a1211ee45dfd0506bd69d474f4` |
| 34 | `lemma` | [coverEntropyInfEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-nonneg.md) | 401 | `result-track:f6f705e3ac417c3f1a04c1dd74da118ac4feec23e0f3304c549b86876eb25876` |
| 35 | `lemma` | [coverEntropyEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-nonneg.md) | 410 | `result-track:7a9374eb683c1f27e148a8f38986049a3a1547c6f523bc0d9d4644f7f8630bca` |
| 36 | `lemma` | [coverEntropyEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-univ.md) | 415 | `result-track:f4e148425bd493fd0da707b253bb1b6056f63703d249077d87876f53e88bc57a` |
| 37 | `lemma` | [coverEntropyInfEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-univ.md) | 420 | `result-track:85219caf1bc61243c6c172f086f5ff97fbf40a3055e460fb52278194cf8865e8` |
| 38 | `lemma` | [coverEntropyEntourage_le_log_coverMincard_div](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-le-log-covermincard-div.md) | 425 | `result-track:21c8e4f07f6fb3e26da0d4ebc5f3ea06d7cd0f6886fe939e73fa50937575a5ce` |
| 39 | `lemma` | [IsDynCoverOf.coverEntropyEntourage_le_log_card_div](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/isdyncoverof-coverentropyentourage-le-log-card-div.md) | 439 | `result-track:2b7c0049c93d990d0da938a00849236dccf5db2e937c8e371598b6e4fe4b8285` |
| 40 | `lemma` | [coverEntropyEntourage_le_coverEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-le-coverentropyinfentourage.md) | 447 | `result-track:86112a3ffdea7dbe16ee82e9786003d92e1b4cafda920b0a15962f0f0a01b3e9` |
| 41 | `lemma` | [coverEntropyEntourage_finite_of_isCompact_invariant](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-finite-of-iscompact-invariant.md) | 453 | `result-track:a061a0d959c020257653ae0f59a0d753cb202e437fe965ce9835aa4f9852f236` |
| 42 | `def` | [coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropy.md) | 469 | `declaration-track:58ad24a0d0cae68abb34266efc80d2439e820e47f1b777ce54fc948b8bb3811b` |
| 43 | `def` | [coverEntropyInf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf.md) | 476 | `declaration-track:bfe5fd2b2c28d3ef33956e5cccf5d9d1242af598d2be0a42ed753046b1db211e` |
| 44 | `lemma` | [coverEntropyInf_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-antitone.md) | 479 | `result-track:c5fbb54ad7478f57edf725a4c2f89b2b144431cd676c07c007eac8c8c5ccaad4` |
| 45 | `lemma` | [coverEntropy_antitone](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropy-antitone.md) | 483 | `result-track:aedb080583ed6ca34a1d29421fe0c6c35a8e5da06467b7a521f20347b37f60b9` |
| 46 | `lemma` | [coverEntropyEntourage_le_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyentourage-le-coverentropy.md) | 489 | `result-track:b74584d79150e37781232cf43fd7e160e4c1c65b4d187f803de753c8ad1a29d0` |
| 47 | `lemma` | [coverEntropyInfEntourage_le_coverEntropyInf](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinfentourage-le-coverentropyinf.md) | 494 | `result-track:928169073a0138e3235f95346c3d9a3a3b5de9a1032f85849fe401ccfbbd4173` |
| 48 | `lemma` | [coverEntropy_eq_iSup_basis](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropy-eq-isup-basis.md) | 499 | `result-track:877624b14332d1e2f21211704643fdb854bb5491de536aeec2fbca6a220c4229` |
| 49 | `lemma` | [coverEntropyInf_eq_iSup_basis](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-eq-isup-basis.md) | 508 | `result-track:28da90e140f34b8e9c589e33ff9004c4167aae6ec0396931fc85af00849d8cbc` |
| 50 | `lemma` | [coverEntropyInf_le_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-le-coverentropy.md) | 517 | `result-track:c1c805e3a4dd59386e404c01282e1608a252f84932dfc021ecd8784a7b3e843c` |
| 51 | `lemma` | [coverEntropy_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropy-empty.md) | 523 | `result-track:f9da489bf46de55758b6af2ae1e984e545d1fe35347291a045fd9d93e5c6e64c` |
| 52 | `lemma` | [coverEntropyInf_empty](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-empty.md) | 527 | `result-track:4dc5b3ebc55a55f6456b41accd420faa14141ab1a1ddf7f4d3c9db181ee46eef` |
| 53 | `lemma` | [coverEntropyInf_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-nonneg.md) | 530 | `result-track:bb740056babd138a49ee5f7bf8b5ce8802459a75dd49e14aefec5cfc73751aca` |
| 54 | `lemma` | [coverEntropy_nonneg](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropy-nonneg.md) | 535 | `result-track:5617ea6245b4247a2d9ff5e2381e81665d6547c40557ae4cfa4489c272c2aee2` |
| 55 | `lemma` | [coverEntropyInf_eq_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/CoverEntropyNamespaced.lean/declarations/coverentropyinf-eq-coverentropy.md) | 539 | `result-track:8ebe0875c1857bdcbd52b7aac56095be03ef64d6e30883cfcedcea73dae8ba97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aa7794aafa5f39f4b6d7d86ae52fe4df6b181e80e00cbbc0ec63386218dbd4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CoverEntropy/Variantb706356c687f438ad3e3656962b2ccc8d9f166f7430ea916d6c33b62c97c46cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
