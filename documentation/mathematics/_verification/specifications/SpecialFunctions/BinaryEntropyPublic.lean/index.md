# Verification target: Binary Entropy Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f76bc67e50141bcef64b117b4f37454442e791",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BinaryEntropyPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/BinaryEntropyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f76bc67e50141bcef64b117b4f37454442e791`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean.json)

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
| 1 | `def` | [binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy.md) | 63 | `declaration-track:97990dbdbf169e455bdd6e721b5ec2f49c0440a21b48f1461e3e2ced0706d53f` |
| 2 | `lemma` | [binEntropy_zero](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-zero.md) | 65 | `result-track:88ed1f265c3cca3a30d3d3c2af401f3682c5d1b7f5179a123a7d0a5d84f3afc1` |
| 3 | `lemma` | [binEntropy_one](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-one.md) | 67 | `result-track:2aad62c7190e7dd37e8441aed5b158fed0ef12de602421cb91048dec82fc536c` |
| 4 | `lemma` | [binEntropy_two_inv](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-two-inv.md) | 69 | `result-track:566a4ee52806e1830e109b796c7257d8aab057b2e6d707ad023450fa5f543591` |
| 5 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub.md) | 71 | `result-track:550cb1c172d6638f1afc45b66a419f59a3a672b1f8dc22152b265680f851ac1b` |
| 6 | `lemma` | [binEntropy_eq_negMulLog_add_negMulLog_one_sub'](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-eq-negmullog-add-negmullog-one-sub-source-edition-2.md) | 74 | `result-track:6d21f41ddaa55ace1c71dd27195c88145b994f509e7531a98106fd68f70a2721` |
| 7 | `lemma` | [binEntropy_one_sub](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-one-sub.md) | 79 | `result-track:6ef08deb499aee46bd89b2c4d03ced3a7518eb9addbf621cb0f789737fd4288b` |
| 8 | `lemma` | [binEntropy_two_inv_add](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-two-inv-add.md) | 83 | `result-track:e05ccd1b0ca50610dd449207602c6b04f776e149a45a1d5846444be9eafd3831` |
| 9 | `lemma` | [binEntropy_pos](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-pos.md) | 86 | `result-track:fb9e7d912d3e9e6eea6a633387489d6b450685d0a182c1d45ef65ea67d603e83` |
| 10 | `lemma` | [binEntropy_nonneg](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-nonneg.md) | 93 | `result-track:bbcaf72507a3ae48682f1300ffd5b67a2e92fa44105117a977589db63b7210f1` |
| 11 | `lemma` | [binEntropy_neg_of_neg](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-neg-of-neg.md) | 101 | `result-track:b6de25db9b8d14cdd28ea7db6a961e1cd4ce9d5ee3e690c4bda61dc3ce9858d9` |
| 12 | `lemma` | [binEntropy_nonpos_of_nonpos](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-nonpos-of-nonpos.md) | 116 | `result-track:ad383bc7c4eec64186ab68e479bc9ab41047967ac287e000ae424dfa6e292eba` |
| 13 | `lemma` | [binEntropy_neg_of_one_lt](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-neg-of-one-lt.md) | 122 | `result-track:8f986e31d506e3d65b66f7f4c34bf5b931e2d8bba0a1e0d671479ab77f20c403` |
| 14 | `lemma` | [binEntropy_nonpos_of_one_le](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-nonpos-of-one-le.md) | 126 | `result-track:d745bac5646a3a2841da57856f72c3496dd5df19d37b28f3820a238300ac0f31` |
| 15 | `lemma` | [binEntropy_eq_zero](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-eq-zero.md) | 129 | `result-track:756fd581360089dd06e25fa95f3aad6fdc0323d69ed6459ec2f962c787108fec` |
| 16 | `lemma` | [binEntropy_lt_log_two](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-lt-log-two.md) | 139 | `result-track:a5e67206235166588bad49779959a9c2b29e43d9da519c96b5d0415dfc395a11` |
| 17 | `lemma` | [binEntropy_le_log_two](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-le-log-two.md) | 157 | `result-track:641cf56289ce9cb9375bfe594672cae3035a83a710a4d0bfab408ce045d42ccc` |
| 18 | `lemma` | [binEntropy_eq_log_two](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-eq-log-two.md) | 162 | `result-track:12144975240f39a15b74564038ff23ec47bf8c26bbf1acd32aebc0c4e6f0b15c` |
| 19 | `lemma` | [binEntropy_continuous](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-continuous.md) | 167 | `result-track:022f4de65ce3d64d6be4b9579b2bf230ff06eaa6e6a7edd946db30af81c8ea07` |
| 20 | `lemma` | [differentiableAt_binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/differentiableat-binentropy.md) | 170 | `result-track:213c379bbf766cbc690c11e5c517dec529c1da55b07a0e6c4f47a8d079ff0ac5` |
| 21 | `lemma` | [differentiableAt_binEntropy_iff_ne_zero_one](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/differentiableat-binentropy-iff-ne-zero-one.md) | 177 | `result-track:bd20084b32846f4dde6042306f2051cb323400b5a0ed6b07f1dea2d39bbe0033` |
| 22 | `lemma` | [deriv_binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/deriv-binentropy.md) | 190 | `result-track:79474e6e7c1a97e24223191cbd759a2f7347fa9b0467c96b16afa51e1e8ff5ac` |
| 23 | `def` | [qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy.md) | 213 | `declaration-track:b2aecc3932960664784223af94f191d901390f3e350dbfada16d06f06db09d91` |
| 24 | `lemma` | [qaryEntropy_zero](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-zero.md) | 215 | `result-track:5234c5b515b7ec0e124b0227424eca82d07e6728a37a9785634f150cc5704d8d` |
| 25 | `lemma` | [qaryEntropy_one](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-one.md) | 216 | `result-track:9653b49081c2d6647742f701f41a3288742d6148c94c288c8aa97e8c270292c5` |
| 26 | `lemma` | [qaryEntropy_two](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-two.md) | 217 | `result-track:e6e6440c5be954ebd1925ee080cffc3e13945c54c7b2b2201eadff78d583556d` |
| 27 | `lemma` | [qaryEntropy_pos](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-pos.md) | 219 | `result-track:6a7ee7025b9b2bfb752c44924f703660da1b95dab4153b37181b5a8c7cb9ab91` |
| 28 | `lemma` | [qaryEntropy_nonneg](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-nonneg.md) | 223 | `result-track:071ec529c079a5f9769baf5703a7f04a7e898cdf04695ad1f65851da2e66dd14` |
| 29 | `lemma` | [qaryEntropy_neg_of_neg](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-neg-of-neg.md) | 231 | `result-track:d05a1bd65097352137a2ef6f490310a77cde221713441e60bf273a43470df3eb` |
| 30 | `lemma` | [qaryEntropy_nonpos_of_nonpos](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-nonpos-of-nonpos.md) | 236 | `result-track:36f55d8e69fccdfd0b398619de98f8f3a168e0cfdfd35e97e5dd3b42f8af4e67` |
| 31 | `lemma` | [qaryEntropy_continuous](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-continuous.md) | 242 | `result-track:5b1e0cf74b2250c2062fd28728fb4388d74509f1aaefbed25e54ac9ea9c3eb0a` |
| 32 | `lemma` | [differentiableAt_qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/differentiableat-qaryentropy.md) | 245 | `result-track:59308c830ffaa2518ad75af418f6be00d4db5f8cf5970d95d16d96678ddcf7b9` |
| 33 | `lemma` | [deriv_qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/deriv-qaryentropy.md) | 248 | `result-track:69aa771ab52bda2168ac4ee98da646e5c0d53fb8e78f546bed9a977fe5876a82` |
| 34 | `lemma` | [hasDerivAt_binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/hasderivat-binentropy.md) | 257 | `result-track:40c30fbf65258c849911e7e2b75ad4b04dce638ecd88b1fbc5424d522d850080` |
| 35 | `lemma` | [hasDerivAt_qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/hasderivat-qaryentropy.md) | 261 | `result-track:35da4bb101ef4d58a862621561ace332d7ebe063730c146efb989fdbbeabdc10` |
| 36 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsGT_atAtop](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/tendsto-log-one-sub-sub-log-nhdsgt-atatop.md) | 269 | `result-track:32b9ea30d105590f8920dcc6f6a47d1c1f68df16f7e1fd3767c0f56cf87019e7` |
| 37 | `lemma` | [tendsto_log_one_sub_sub_log_nhdsLT_one_atBot](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/tendsto-log-one-sub-sub-log-nhdslt-one-atbot.md) | 278 | `result-track:70fe157ffb2274bc82686773add6b3264b55e51c083ff23254b1db5a94c07e81` |
| 38 | `lemma` | [not_continuousAt_deriv_qaryEntropy_one](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/not-continuousat-deriv-qaryentropy-one.md) | 294 | `result-track:b2d275ee02e4ebfa4d8de6aec39959096ac0529bc7f4a8b460d4dfd48dd31e91` |
| 39 | `lemma` | [not_continuousAt_deriv_qaryEntropy_zero](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/not-continuousat-deriv-qaryentropy-zero.md) | 314 | `result-track:178cf27bfc868e7a57da1cc59345ed55bfede10adb9aa5c604b6567186de8ee3` |
| 40 | `lemma` | [deriv2_qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/deriv2-qaryentropy.md) | 332 | `result-track:98e4231c6907d4130ad18614106d7718069b0faece77e05d170d4b1b582a313c` |
| 41 | `lemma` | [deriv2_binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/deriv2-binentropy.md) | 362 | `result-track:7f948a23cb489a27e7e1902c4b3d786732b91d52ad1e93f0007a1d45249ecede` |
| 42 | `lemma` | [qaryEntropy_strictMonoOn](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-strictmonoon.md) | 368 | `result-track:439d7e550cd6fd84aa22cbac9d45d0a700f3d80608253a363b208f49508b09f5` |
| 43 | `lemma` | [qaryEntropy_strictAntiOn](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/qaryentropy-strictantion.md) | 396 | `result-track:29cfd11965d8230db6c74e65e9a6fb459c229d0712ae9e57a6dc51d91b555886` |
| 44 | `lemma` | [binEntropy_strictMonoOn](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-strictmonoon.md) | 424 | `result-track:ad36323d8de09732416817ab895d4e8324ca00508f1748b0864e803e394320d6` |
| 45 | `lemma` | [binEntropy_strictAntiOn](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/binentropy-strictantion.md) | 429 | `result-track:34d8853bcab54a3fbf24a0763361c2b9ad8971ebbdcdc08425b22f209b87c159` |
| 46 | `lemma` | [strictConcaveOn_qaryEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/strictconcaveon-qaryentropy.md) | 436 | `result-track:38a6f43058095e0f0a2a2a41ca82b74a1ca58ef4f4ba5ae17066b81402b6749f` |
| 47 | `lemma` | [strictConcave_binEntropy](../../../../SpecialFunctions/BinaryEntropyPublic.lean/declarations/strictconcave-binentropy.md) | 445 | `result-track:e557d6cb7b3a57e34c4f1410d61f8c2a73d26708362e3894d6b8f3e799f2a437` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c54b7c554b1c288648d0e41ac872c82c25248d1522757835adf4ce18a2383280 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variantd5fd1fa49ed8477db87313214d7e7fc92fbb78c1c652463dc3e493cb3cbdaa0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
