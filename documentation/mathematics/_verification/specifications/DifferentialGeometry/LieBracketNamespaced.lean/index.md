# Verification target: Lie Bracket Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb4094d30dcab94a65ddfc8516caaaf81e8ee127",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LieBracketNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/LieBracketNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb4094d30dcab94a65ddfc8516caaaf81e8ee127`.

Source path: `GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.VectorField` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiffMFDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.MDifferentiable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorField.Pullback` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mlieBracketWithin](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin.md) | 70 | `declaration-track:2f3f84c523d9db430b80211f4e0768f86e9da16099299b7e6fa1f2435e47df89` |
| 2 | `def` | [mlieBracket](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket.md) | 80 | `declaration-track:33ab8ccf70325cb677f616fe04e6ef064faaafbb60ef3fca290009f549375497` |
| 3 | `lemma` | [mlieBracketWithin_def](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-def.md) | 83 | `result-track:f69ddcf1b4af000b4f9643779dd029e27f290c6359b9fb8eca50402db80390ac` |
| 4 | `lemma` | [mlieBracketWithin_apply](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-apply.md) | 91 | `result-track:b64fdd368092fba8811afdb436a9db9e88d5858785ae6e75ce1237a1ef2adc59` |
| 5 | `lemma` | [mlieBracketWithin_eq_lieBracketWithin](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-eq-liebracketwithin.md) | 99 | `result-track:03daef1c05c436b86e9cf54f2762297991f9a27b3140b9cd721f215d430df17a` |
| 6 | `lemma` | [mlieBracketWithin_univ](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-univ.md) | 106 | `result-track:f16eb78af48c5497bce06284d510344b3097b20b1323d6747857d843a444f8eb` |
| 7 | `lemma` | [mlieBracketWithin_eq_zero_of_eq_zero](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-eq-zero-of-eq-zero.md) | 109 | `result-track:0d99baa8f7410703fe59ca689d16479803cd6f06214dcfb01df298b40965862c` |
| 8 | `lemma` | [mlieBracketWithin_swap_apply](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-swap-apply.md) | 123 | `result-track:c3ebf96f523ce69f12440d1cf4228a5c31194d6370ca9c729a9b0a3c860bacc7` |
| 9 | `lemma` | [mlieBracketWithin_swap](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-swap.md) | 128 | `result-track:9ca871b4f122a91f72944f51a8dbbf3fa5c98f3688541290fccea2d7b227a48e` |
| 10 | `lemma` | [mlieBracket_swap_apply](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-swap-apply.md) | 133 | `result-track:f9be02d142e5b1b391898c4cc523522d9d27089b94398bc38c0b9e6561ebc326` |
| 11 | `lemma` | [mlieBracket_swap](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-swap.md) | 136 | `result-track:f7e8f6b44b44566f05e159c35c72c1ed317ea1d6c66267359541b8696dad8248` |
| 12 | `lemma` | [mlieBracketWithin_self](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-self.md) | 139 | `result-track:597ca8fa8f383245a197f4884664ce7de40a95cfcf8d769de0ba0ee5fb4bf899` |
| 13 | `lemma` | [mlieBracket_self](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-self.md) | 142 | `result-track:3e4233efcf3aa72444095c30cf7d209cdee76e61e487ddea774f92fe04eadab4` |
| 14 | `theorem` | [mlieBracketWithin_congr_set'](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-congr-set.md) | 147 | `result-track:bb66e89e3cb8b0c84bfe736d35e1198b6467855c7d445eea8bb8de38110f48ab` |
| 15 | `theorem` | [mlieBracketWithin_congr_set](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-congr-set-source-edition-2.md) | 175 | `result-track:c8ca004f53d56aed127617e6f655753c5e931aa3d38f8c84eb846eb3fbc09156` |
| 16 | `theorem` | [mlieBracketWithin_inter](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-inter.md) | 179 | `result-track:0d32c019fb00e95b4b08d1ee628ed2dc62c7b009816451d503bfd7fdb233415c` |
| 17 | `theorem` | [mlieBracketWithin_of_mem_nhds](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-of-mem-nhds.md) | 186 | `result-track:e2f6353da2b6046c7618ecdcc5a7b5f01982e49ef63be082388c3bdc69344d99` |
| 18 | `theorem` | [mlieBracketWithin_of_isOpen](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-of-isopen.md) | 190 | `result-track:809ad36e338269632f349410dbf75a3595440c74d9ccd158b635561b2ddf6254` |
| 19 | `theorem` | [mlieBracketWithin_eventually_congr_set'](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-eventually-congr-set-source-edition-2.md) | 196 | `result-track:aee5d40b824c675f0c8be1b297be82e6935a8a0450ce2493845ebd7f50011064` |
| 20 | `theorem` | [mlieBracketWithin_eventually_congr_set](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-eventually-congr-set.md) | 200 | `result-track:922dc8c38e01c217f94b4389514aea259af1cd98a6210b72bc5319861f8895cc` |
| 21 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-eq.md) | 204 | `result-track:32fad7c4911847ccec21c75b682574b964b0d38a250bac565055ddddd1d2f810` |
| 22 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-eq-of-mem.md) | 231 | `result-track:3438c2a17af7686a98c2f8d0f7dac995d1e7f1299f9592f1971db975e4c946b0` |
| 23 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-source-line-240-occurrence-2.md) | 240 | `result-track:347126d94f339798c9c4cd73c2f9e9026c4e96b606603489dc40b531268ff1ff` |
| 24 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-source-line-253-occurrence-2.md) | 253 | `result-track:47723c3d0316fc6d841b83ae537ef5e94d24068b9e46d5ea37592a1f4de5d68a` |
| 25 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-of-insert.md) | 258 | `result-track:2623ca648f7cf0f5ef4bdc3d480a6fb152aa510dd3e756f7dad654da19c87772` |
| 26 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-eq-nhds.md) | 264 | `result-track:028a530b9e1c5fe31876de3a27f550aab93474787a9a7f6f6f6dac6602eb874e` |
| 27 | `theorem` | [mlieBracketWithin_congr](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-congr.md) | 270 | `result-track:bb8fac3902fcae0a3abc627eb34e8012973a698fe42312141b3ea6b92edbd3c4` |
| 28 | `theorem` | [mlieBracketWithin_congr'](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-congr-source-edition-2.md) | 278 | `result-track:c7d579cf91773facc2a82f51a1c1b24555d8f02646e57f2d2aef907f5dc3c191` |
| 29 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-vectorfield-eq.md) | 282 | `result-track:1dd43a5fd32f1e870c39781e754cc9e21a41d3ee76c6fb223aaff355c87e6f51` |
| 30 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-vectorfield-source-line-288-occurrence-2.md) | 288 | `result-track:0e1cc06287ffd9a12b983dfa303df38935e12258fc219de19e4bd134be3ca549` |
| 31 | `lemma` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/differentiablewithinat-mpullbackwithin-vectorfield.md) | 298 | `result-track:61861dc7db30e10a2d66df51d890494190ad31237fe8c4fede5490684a34cf3a` |
| 32 | `lemma` | [mlieBracketWithin_smul_left](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-smul-left.md) | 311 | `result-track:f2600759ee6fcaea899d2c793295eb894a5c0eb78e0b83c7a98c2393725cefd5` |
| 33 | `lemma` | [mlieBracket_smul_left](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-smul-left.md) | 320 | `result-track:a08cc71d89bdd240a23b966de471215996a69d9535a0ca4d1fdf3140db92f4e9` |
| 34 | `lemma` | [mlieBracketWithin_smul_right](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-smul-right.md) | 326 | `result-track:83e1f1ef45df9264c7029c20503e22f420d9cf4f93aa48499ad6e482412f1adf` |
| 35 | `lemma` | [mlieBracket_smul_right](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-smul-right.md) | 335 | `result-track:d3f6b76f7c102e89730ca52110cb9d4ba77438cc052fc562aafd33fa8eddbcf1` |
| 36 | `lemma` | [mlieBracketWithin_add_left](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-add-left.md) | 341 | `result-track:c4bae8ac8c2446a4a1afe0f429c9868da311756088ae478cf9897e20834dfa7e` |
| 37 | `lemma` | [mlieBracket_add_left](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-add-left.md) | 353 | `result-track:057b9a6734c1bd8afef2554396624f23d570eb999afb841ae326784e5fa726c2` |
| 38 | `lemma` | [mlieBracketWithin_add_right](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-add-right.md) | 361 | `result-track:07f6ccff2d43d5015c423b0c66d52a6551f2cbf485337e3a988af5e479b32e46` |
| 39 | `lemma` | [mlieBracket_add_right](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-add-right.md) | 371 | `result-track:316897e9ded7196b49524a72012955e6c0532ef7f6036af5396dcf5895262d7b` |
| 40 | `theorem` | [mlieBracketWithin_of_mem_nhdsWithin](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-of-mem-nhdswithin.md) | 379 | `result-track:33a14556708957f68741ef9a67d9d585d898006940dd0477e712a412f3dacec0` |
| 41 | `theorem` | [mlieBracketWithin_subset](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-subset.md) | 396 | `result-track:995b93c43a2df53be988a80bd4e71a442608d970eb9658016729c421b31dc886` |
| 42 | `theorem` | [mlieBracketWithin_eq_mlieBracket](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-eq-mliebracket.md) | 402 | `result-track:37283800874fd3c713ed7919ffcb817ad451595973774a18de4337c23e2908f1` |
| 43 | `theorem` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-congr-mono.md) | 409 | `result-track:44c3da2ce6008ef3641253538a6da56e0640c99eda1846f50f04708f9e4b3186` |
| 44 | `lemma` | [mpullbackWithin_mlieBracketWithin_aux](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullbackwithin-mliebracketwithin-aux.md) | 428 | `result-track:5881d6933225a38a8973f1ff426271717617e555d64e6aa9e0654c967239ec01` |
| 45 | `lemma` | [mpullbackWithin_mlieBracketWithin_of_isSymmSndFDerivWithinAt](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullbackwithin-mliebracketwithin-of-issymmsndfderivwithinat.md) | 563 | `result-track:48445bdce528ed3ce4c21a25e2a6542f994a0932eb546b5f8e51e24a4631caf9` |
| 46 | `lemma` | [mpullbackWithin_mlieBracketWithin'](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullbackwithin-mliebracketwithin.md) | 654 | `result-track:b49036b565e5955063a26718861e0bfc30f10e68342bc47a999f8efbbd199777` |
| 47 | `lemma` | [mpullbackWithin_mlieBracketWithin](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullbackwithin-mliebracketwithin-source-edition-2.md) | 691 | `result-track:cf3246409dbf89f5d63bbad60dbcbcd515013ee0b3008e4ebe682a185d5d917d` |
| 48 | `lemma` | [mpullback_mlieBracketWithin](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullback-mliebracketwithin.md) | 703 | `result-track:5db8d26f624c6388bc3e8ba3a09d879412c9750ab92500dedd8af545994cd7e8` |
| 49 | `lemma` | [mpullback_mlieBracket](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mpullback-mliebracket.md) | 735 | `result-track:26677d96c913ffa26ea658cb7956bfe1f52151fa2d61b66d3d86b350d1f88970` |
| 50 | `lemma` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield.md) | 746 | `result-track:2ab2cf52f78b631d523bd546bc7d05f0e1ae51a1d5c349600e4660172744bdd7` |
| 51 | `lemma` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-vectorfield-source-line-812-occurrence-2.md) | 812 | `result-track:9393f98990c89112b338b8d97a27b0bb5a1d8ce1db7b59303ca48ba55e0cf50d` |
| 52 | `lemma` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracketwithin-vectorfield-source-line-822-occurrence-2.md) | 822 | `result-track:b5a8c42915ea5b07ace221d9ee7465075de1b28d8d1440e09b6eb2ffef07ef16` |
| 53 | `lemma` | [Lie Bracket Namespaced](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/mliebracket-vectorfield.md) | 831 | `result-track:04a198c84b9c13bbdec1d427f8f1008f3d0db0ea06d14704663a1f4bd33140ca` |
| 54 | `theorem` | [leibniz_identity_mlieBracketWithin_apply](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/leibniz-identity-mliebracketwithin-apply.md) | 848 | `result-track:e1d90e07430d4f70937dbe0938e8752403934c25363a1bed4e4f7183a28ebf8e` |
| 55 | `lemma` | [leibniz_identity_mlieBracket_apply](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/leibniz-identity-mliebracket-apply.md) | 984 | `result-track:7558e9d7aa4913ff4ebc858fa5f60a6093a53218627c71d5a439e8e6ec95a10d` |
| 56 | `lemma` | [leibniz_identity_mlieBracket](../../../../DifferentialGeometry/LieBracketNamespaced.lean/declarations/leibniz-identity-mliebracket.md) | 996 | `result-track:a3271df5ff3f128488852d493a3f5b1d11c3c26b7b71ffbf8194c097c4604b54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c521f72c30615899912269a3f31166b6e94eb207ad602e3ac20d884155ead8f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
