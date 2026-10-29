# Verification target: Local Extr Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LocalExtrBasic.lean/index.md) · [Full source](../../../../RealFunctions/LocalExtrBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba440227664f5658fece039b8f5b5edf866e6a17`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posTangentConeAt](../../../../RealFunctions/LocalExtrBasic.lean/declarations/postangentconeat.md) | 75 | `declaration-track:516c96da819b69cde4c0a6845097482e7a149a98498260f6f646a4822c303d28` |
| 2 | `theorem` | [posTangentConeAt_mono](../../../../RealFunctions/LocalExtrBasic.lean/declarations/postangentconeat-mono.md) | 79 | `result-track:375a3139f15c0044b8fdcd42a5ff6ac5f46297080f0f09cd8861e0c86c73c4e3` |
| 3 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](../../../../RealFunctions/LocalExtrBasic.lean/declarations/mem-postangentconeat-of-frequently-mem.md) | 83 | `result-track:683cf07223a2f774b3530567708518d9ab68fd5fd8b0211d095290db26b10259` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasic.lean/declarations/mem-postangentconeat-of-segment-subset.md) | 96 | `result-track:a388e486bdb2948034f845c719883aa30dec7bbc4bdea66227772b0fbbce88e6` |
| 5 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](../../../../RealFunctions/LocalExtrBasic.lean/declarations/sub-mem-postangentconeat-of-segment-subset.md) | 105 | `result-track:ce17eee4452c192e661aa112eeeeb7213fb5923a27d5e888d3b8de2f65290e7f` |
| 6 | `theorem` | [posTangentConeAt_univ](../../../../RealFunctions/LocalExtrBasic.lean/declarations/postangentconeat-univ.md) | 110 | `result-track:27133674de06584dbeac8a34b169041b7dac3ef474c7726543e93882320c98cb` |
| 7 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmaxon-hasfderivwithinat-nonpos.md) | 119 | `result-track:bab60a59df8bb14a5a39ddb346c37c8cf7b70537f3b2356029d5df22cf5144e7` |
| 8 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmaxon-fderivwithin-nonpos.md) | 133 | `result-track:0295e4a21e0bb5ea0455ae747bba4cea034c69821bdb9d7db77106fcef15521f` |
| 9 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmaxon-hasfderivwithinat-eq-zero.md) | 142 | `result-track:3cd9bc95e231495e997e19e239c4ae8b460364108f20445a3c8814192c45be66` |
| 10 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmaxon-fderivwithin-eq-zero.md) | 149 | `result-track:3ed05767197b0b3cffc049e463af5f882b3805ea489d3f550322394e5e265d25` |
| 11 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalminon-hasfderivwithinat-nonneg.md) | 159 | `result-track:00398b9a741c6a7138884a8e17753597c222673ec65625b0b972ee643f8011c8` |
| 12 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalminon-fderivwithin-nonneg.md) | 165 | `result-track:254cfbce1166e73a95f3af7b62f500ac57f6a8ceaee51d78d6d8b474f95cd30e` |
| 13 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalminon-hasfderivwithinat-eq-zero.md) | 174 | `result-track:9c2486297ba7a1205865dddf915d1be82299e4bacd30820ae1b2556cfe45963b` |
| 14 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalminon-fderivwithin-eq-zero.md) | 181 | `result-track:68bfe9737b98d3e04818059a44d018c7c63a06463abb60cb14c3682b74a1bcfe` |
| 15 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmin-hasfderivat-eq-zero.md) | 190 | `result-track:02d951ae777e746ae9da5c3abc95558c99e57aec93466cbd486573dd97b4b0b3` |
| 16 | `theorem` | [IsLocalMin.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmin-fderiv-eq-zero.md) | 197 | `result-track:abbf8a16ef8d45847e61dc1bb7eb62ad5a7659af5415b289d531fb19dc7096e5` |
| 17 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmax-hasfderivat-eq-zero.md) | 203 | `result-track:7b297d85f4c9209d7c3f6b06b20e65e67821885616ef2187ece5838727396458` |
| 18 | `theorem` | [IsLocalMax.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmax-fderiv-eq-zero.md) | 207 | `result-track:30568ddac190919fb4ef51469209cdb0868a62ca308fceb94ec1657972234264` |
| 19 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalextr-hasfderivat-eq-zero.md) | 213 | `result-track:38461946e0e5675c9b53d36ecba8ec2381cdd85523423a0161380370a9ea0cf2` |
| 20 | `theorem` | [IsLocalExtr.fderiv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalextr-fderiv-eq-zero.md) | 217 | `result-track:6849459358f79445c3df2eb921fdfcd46569c56a714d4bfb549b43187eb3f6ea` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](../../../../RealFunctions/LocalExtrBasic.lean/declarations/one-mem-postangentconeat-iff-mem-closure.md) | 230 | `result-track:0afe95d94346b1980cb85cec03039dbd4584caf8158ef587cd51f344e4e6c2a4` |
| 22 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](../../../../RealFunctions/LocalExtrBasic.lean/declarations/one-mem-postangentconeat-iff-frequently.md) | 246 | `result-track:124b5ad55fb498a0018a834993971d02c1e1e9ae87bb31a20272dfece7a9290b` |
| 23 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmin-hasderivat-eq-zero.md) | 253 | `result-track:c08be9ab56efaf6273490103f8a3146f0466e1cdc3d80771a74dc39c204b4f16` |
| 24 | `theorem` | [IsLocalMin.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmin-deriv-eq-zero.md) | 257 | `result-track:229feebfca857908e3772acee6c164e5a544a21390b5fc397f3c0cd1f7dfe4aa` |
| 25 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmax-hasderivat-eq-zero.md) | 263 | `result-track:05068724407ca4a4212ba441b7568b1b0d8797e72400afcf8c6e4b890f08b5db` |
| 26 | `theorem` | [IsLocalMax.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalmax-deriv-eq-zero.md) | 267 | `result-track:d60795308692fbb6254ecac75c6ef133bc1e1f01544d2b0d6931c4393a514509` |
| 27 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalextr-hasderivat-eq-zero.md) | 273 | `result-track:a845c76d19ac508bd92724511c17bfb8acc13fb30a1e3a5d4cc0429c76d165f8` |
| 28 | `theorem` | [IsLocalExtr.deriv_eq_zero](../../../../RealFunctions/LocalExtrBasic.lean/declarations/islocalextr-deriv-eq-zero.md) | 277 | `result-track:99c56a886a0d4936d149affec89ccbfd100bb07ab765b97300f18f5ffa7fdaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29e642dbddf5fd0fdc98da266bd82d0fa8744b99595fef9db5282077456fd902 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
