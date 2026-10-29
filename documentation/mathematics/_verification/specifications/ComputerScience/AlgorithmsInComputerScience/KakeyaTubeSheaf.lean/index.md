# Verification target: Kakeya Tube Sheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a65c2d44318228d588d37782a144efe56e66acd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a65c2d44318228d588d37782a144efe56e66acd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M546172676574732f4b616b6579612e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteDirectionNet](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/finitedirectionnet.md) | 19 | `declaration-track:81221cd7de7d6a82178a4f0ba7ecd025bcb2e89cdff03ea782c5ca6239a5a542` |
| 2 | `structure` | [FiniteTube](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/finitetube.md) | 24 | `declaration-track:456fccc1aacf3dd0b3123f4337fbb03d0e3d33d67bca118c9a9059d26a0cdb06` |
| 3 | `structure` | [KakeyaTubeCover](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeyatubecover.md) | 32 | `declaration-track:95098c6724cd7182254bb9a22b75a6d91678154b5136bd760163c1b2e020fa67` |
| 4 | `structure` | [KakeyaTubeSheafSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeyatubesheafsurface.md) | 39 | `declaration-track:dc9710b1316a7b97f0df5346307cc47a23476ca04523de99cc0cca49682f5dfc` |
| 5 | `def` | [defaultFiniteDirectionNet](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/defaultfinitedirectionnet.md) | 51 | `declaration-track:4bc1d1e0dd86f7148f53cbd96ccd7b9c7717eb38b0516df36fd40358297da195` |
| 6 | `def` | [defaultFiniteTubes](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/defaultfinitetubes.md) | 55 | `declaration-track:bb1c67f9a71e49a089a15e7cf724d1fa5691ad86347ab32934fbf2376e808547` |
| 7 | `def` | [defaultKakeyaTubeCover](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/defaultkakeyatubecover.md) | 68 | `declaration-track:8281e2965adcba5e75a1004f5caca5877924bacae3c98d1c44cf198ea5e988ac` |
| 8 | `def` | [defaultKakeyaTubeSheafSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/defaultkakeyatubesheafsurface.md) | 74 | `declaration-track:73d7b775ce4103ead8b59b13713c05977437e948857ae775ac61e041543ac3d9` |
| 9 | `theorem` | [kakeya_tube_sheaf_is_finite_witness_only](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-is-finite-witness-only.md) | 85 | `result-track:cd282632a3cbe7c5bbf1e366cdab3f557ccb9bdf92fdadf952affefe278f31e2` |
| 10 | `theorem` | [kakeya_tube_sheaf_denies_final_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-denies-final-claim.md) | 89 | `result-track:b0bdcba54d058054733e839e03fca0de3014778459151d236b37d077471e6b01` |
| 11 | `theorem` | [kakeya_tube_sheaf_retains_scale_uniform_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-retains-scale-uniform-residue.md) | 93 | `result-track:80dfa7c34c710db8b9daea6502b60522205cff3dd8528e515c357d2a20d15023` |
| 12 | `theorem` | [kakeya_tube_sheaf_retains_continuum_direction_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-retains-continuum-direction-residue.md) | 97 | `result-track:c08d2febc271b0bd35d851dd3ef185f1f7e8279484b2fdb66f2b7c02cd62788e` |
| 13 | `theorem` | [kakeya_tube_sheaf_retains_hausdorff_transfer_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-retains-hausdorff-transfer-residue.md) | 101 | `result-track:3f1ff45eacb3490a6159f37f9e3233efe799c23304ce3006cb79951e374d2494` |
| 14 | `theorem` | [kakeya_tube_sheaf_retains_minkowski_transfer_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-retains-minkowski-transfer-residue.md) | 105 | `result-track:3fe6cc424d667a4a64ef5ce8514e44f89e10dfc9a2fe3d8e043e9b8161fcc272` |
| 15 | `theorem` | [kakeya_tube_sheaf_retains_dimension_transfer_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-retains-dimension-transfer-residue.md) | 109 | `result-track:dd28a6f775be61f586a764fd340a739b1bbcf17c339cfca62ad6f23eb47797a1` |
| 16 | `theorem` | [kakeya_tube_cover_denies_scale_uniform_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-cover-denies-scale-uniform-claim.md) | 114 | `result-track:2c96dac3f88f225935fb68396e76c2e590844a1915b91788bfc4683fea603cab` |
| 17 | `theorem` | [kakeya_tube_cover_denies_continuum_transfer_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-cover-denies-continuum-transfer-claim.md) | 118 | `result-track:18dc6ed0a7fe322b2a18b3a1230771e77ebd0a428048d99602ee5a233d244b05` |
| 18 | `theorem` | [kakeya_tube_direction_net_denies_continuum_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-direction-net-denies-continuum-claim.md) | 122 | `result-track:4c7001cd94faef5f5d43bf2a574217c8fe87f2dfa638e82ec685461035eb8100` |
| 19 | `theorem` | [kakeya_tube_sheaf_matches_target_boundary_posture](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaTubeSheaf.lean/declarations/kakeya-tube-sheaf-matches-target-boundary-posture.md) | 126 | `result-track:1b541a75b75a24ef0a2dad32d06b78c98b188f6b39a33c4dd64526df7369b22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae12d8687ce88242487a40919e621b93dcc4e651901129f913cd993f733d814c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4b616b6579615475626553686561662e6c65616e/Variant9e039db4a695e1f008b07bc74e9af95057351415a6bbd06c4cc1862a790f6dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
