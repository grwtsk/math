# Verification target: Cyclic Cubical

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1270cd064fde10dc0711ee520fe8d865ee809077",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CyclicCubical.lean/index.md) · [Full source](../../../../Combinatorics/CyclicCubical.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1270cd064fde10dc0711ee520fe8d865ee809077`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.Suture` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_0f99ce0ae3d2c47d` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_290a425f0602c114` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_63caa115c6b3005d` — import line 10; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_a826785775b3e039` — import line 11; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_ad89ed7a4ccda03a` — import line 12; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_c03d56965db9c4f2` — import line 13; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_ca8ec799f6a9f7b7` — import line 14; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_d449506b80dc4719` — import line 15; external provider; requires a separately pinned dependency.
- `Mathematics.Oracle.Naming.A_f1f86889ce71025c` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FaceEncoding](../../../../Combinatorics/CyclicCubical.lean/declarations/faceencoding.md) | 44 | `declaration-track:58d135c74596cdd690e675109f33df6601b3adb5ec62d6a916d8a006cb14ee7d` |
| 2 | `def` | [faceEncodingEquiv](../../../../Combinatorics/CyclicCubical.lean/declarations/faceencodingequiv.md) | 48 | `declaration-track:b66a1fb6897438d01430f0a096674ff480d4cd441f32814c3e50d62dbd577701` |
| 3 | `theorem` | [card_free_coordinate_sets](../../../../Combinatorics/CyclicCubical.lean/declarations/card-free-coordinate-sets.md) | 107 | `result-track:721447882fd914257bd06a6c41b2b9be549b126947592f5fb8bcea3cda17ef91` |
| 4 | `theorem` | [card_fixed_assignments](../../../../Combinatorics/CyclicCubical.lean/declarations/card-fixed-assignments.md) | 118 | `result-track:233876fba840056733b84e83754109f5561a427f27548d3e5c60eb91e79e5cd8` |
| 5 | `theorem` | [card_faces_eq_faceCount](../../../../Combinatorics/CyclicCubical.lean/declarations/card-faces-eq-facecount.md) | 127 | `result-track:a4bfaa251d6881a0b1debd915704efe135858430be4301e094c78a473a83bb8c` |
| 6 | `theorem` | [sum_faceCount_eq_three_pow](../../../../Combinatorics/CyclicCubical.lean/declarations/sum-facecount-eq-three-pow.md) | 136 | `result-track:bd3103049732de9891bc3175590f420523353aef884d21994e6c0f5302329150` |
| 7 | `def` | [cyclicCoordinateEquiv](../../../../Combinatorics/CyclicCubical.lean/declarations/cycliccoordinateequiv.md) | 146 | `declaration-track:044ea9e7b46d61d886fe73a7c70d600f30ca8df533a0570f2460c0bc4c7a8d59` |
| 8 | `theorem` | [cyclicCoordinateEquiv_zero](../../../../Combinatorics/CyclicCubical.lean/declarations/cycliccoordinateequiv-zero.md) | 152 | `result-track:61d3ce877eccc247747d6ee32cce93e8135441039765920454b6626033628966` |
| 9 | `theorem` | [cyclicCoordinateEquiv_symm_zero](../../../../Combinatorics/CyclicCubical.lean/declarations/cycliccoordinateequiv-symm-zero.md) | 156 | `result-track:a8768fb40caae87470e974348bd75bac21a6d2c2c9729a893475423a8b5f9add` |
| 10 | `theorem` | [cyclicCoordinateEquiv_symm](../../../../Combinatorics/CyclicCubical.lean/declarations/cycliccoordinateequiv-symm.md) | 161 | `result-track:3ae3710fd2af0a12fe7c8dcf20782ece3193892be77c20efffc127f0f6528d32` |
| 11 | `theorem` | [cyclicCoordinateEquiv_add](../../../../Combinatorics/CyclicCubical.lean/declarations/cycliccoordinateequiv-add.md) | 166 | `result-track:0ba11d6bc77439fd0f753d522bfb2a9f44cf7642792011041cb39fb8913b1f84` |
| 12 | `def` | [rotateBitField](../../../../Combinatorics/CyclicCubical.lean/declarations/rotatebitfield.md) | 173 | `declaration-track:9251bce05a696f21250a36eb5d77eb61a7d2681cae3e4c5abd4b0e29d8d3ee28` |
| 13 | `def` | [rotateFace](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface.md) | 177 | `declaration-track:9295cecf4d771193f5106140e9eadae3b35b3b8a56f80f2f02a65f683ccd9557` |
| 14 | `theorem` | [rotateBitField_zero](../../../../Combinatorics/CyclicCubical.lean/declarations/rotatebitfield-zero.md) | 180 | `result-track:630fb5faf3a84d6b31d1f65eb8ab536a50d831a8b663f5de5967264006e3bcd9` |
| 15 | `theorem` | [rotateFace_zero](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-zero.md) | 185 | `result-track:c964e600025e9c6f6200c378a902b9a7a2a9f89f0433b307e9ea581628879276` |
| 16 | `theorem` | [rotateBitField_add](../../../../Combinatorics/CyclicCubical.lean/declarations/rotatebitfield-add.md) | 190 | `result-track:1282a66607e0734e886f2c8533b859793573fd95669410cb1bea97a7e5406d57` |
| 17 | `theorem` | [rotateFace_add](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-add.md) | 196 | `result-track:9e5985ef9d4214a3ea17431f2423b0442a318565bf0d84ae59c35c157fbe39f6` |
| 18 | `theorem` | [rotateBitField_neg_rotateBitField](../../../../Combinatorics/CyclicCubical.lean/declarations/rotatebitfield-neg-rotatebitfield.md) | 201 | `result-track:032966ed3cda0a680a474e093db0946be1187b25f036cfb00e5d3d623c6ce776` |
| 19 | `theorem` | [rotateFace_neg_rotateFace](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-neg-rotateface.md) | 207 | `result-track:3709288e5a2ded45b96c39015aad056a3375d7afeaafa1be3b57bebdd33630cd` |
| 20 | `theorem` | [rotateFace_dimension](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-dimension.md) | 214 | `result-track:cde7fc6403cd20a296dc47d73734c0198b730eb7154e6d47fa05ac2005de5f29` |
| 21 | `theorem` | [rotateFace_inclusion](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-inclusion.md) | 234 | `result-track:7a1007d2c9005bd8ccf1906627a83809e39838637be1a22c43cbc3802246f5fd` |
| 22 | `theorem` | [rotateFace_boundaryRelation](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-boundaryrelation.md) | 246 | `result-track:2bf63e281b65c077682968641c6413b1785dc50938fff83300d2a2113a984087` |
| 23 | `theorem` | [rotateFace_incidence](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-incidence.md) | 253 | `result-track:7f52f92fc7fbb4bf44828d896614b5c1c3f1bef6859820eab6dedf16cd8d7841` |
| 24 | `theorem` | [rotateFace_commonIncidence](../../../../Combinatorics/CyclicCubical.lean/declarations/rotateface-commonincidence.md) | 268 | `result-track:56b0f2b57b5bc3515aa3a2da4fde1052893684eb9bb9f9b5f2a6d0ff1a3f3e20` |
| 25 | `abbrev` | [CubicalChain](../../../../Combinatorics/CyclicCubical.lean/declarations/cubicalchain.md) | 277 | `declaration-track:c88ebaabd5eacb78aeb489be0b55aa7d4ed1337e989c9dbf88e796377180d240` |
| 26 | `def` | [rotate_chainMap](../../../../Combinatorics/CyclicCubical.lean/declarations/rotate-chainmap.md) | 280 | `declaration-track:90fa045a6d164c0e635d45e5ffe8fbdb2bd89c79777bfd7e94704f10409ca61b` |
| 27 | `def` | [cubicalBoundary](../../../../Combinatorics/CyclicCubical.lean/declarations/cubicalboundary.md) | 285 | `declaration-track:0377d6552ed5dbddc16f35f9757a7f579677d3963198b6db36861c82dfd4f259` |
| 28 | `theorem` | [boundary_rotate](../../../../Combinatorics/CyclicCubical.lean/declarations/boundary-rotate.md) | 293 | `result-track:4206d4732e8db958efd355b986842bb1458a43884e73a336c14aa0b5db3220c4` |
| 29 | `def` | [rotationEquivalent](../../../../Combinatorics/CyclicCubical.lean/declarations/rotationequivalent.md) | 321 | `declaration-track:4a94931e658fdfefeaa1400d1122532a870aa4002be87f0314fa6fc0599856df` |
| 30 | `def` | [toy1010](../../../../Combinatorics/CyclicCubical.lean/declarations/toy1010.md) | 324 | `declaration-track:2df6193041311deeb21bbeee338fe6481bbe065f501b6e8f8a14b1cd91bd4a75` |
| 31 | `def` | [toy0101](../../../../Combinatorics/CyclicCubical.lean/declarations/toy0101.md) | 330 | `declaration-track:aec50355e63ade63819c1a3ee741c90b30aa039357735bb4fd1370fb45f6afa8` |
| 32 | `theorem` | [toy_1010_rotates_to_0101](../../../../Combinatorics/CyclicCubical.lean/declarations/toy-1010-rotates-to-0101.md) | 337 | `result-track:f16c138859902bde791647b8726e98b898bcec648d2cf864287d5907f1d6c824` |
| 33 | `def` | [rotationOrbitCount](../../../../Combinatorics/CyclicCubical.lean/declarations/rotationorbitcount.md) | 344 | `declaration-track:62306119ad5fc4e6cbcbefb54a4b7d865e200f61c690c3c4d4fa2fcfa611d449` |
| 34 | `def` | [rotationKFaceOrbitCount](../../../../Combinatorics/CyclicCubical.lean/declarations/rotationkfaceorbitcount.md) | 349 | `declaration-track:eb341db77cb10b5703260ef35e515cd2cdd8ce1b6fc4afa3460330a9161629ad` |
| 35 | `theorem` | [rotationKFaceOrbitCount_burnside](../../../../Combinatorics/CyclicCubical.lean/declarations/rotationkfaceorbitcount-burnside.md) | 356 | `result-track:92289539975da9c43e21f13fef552c3858d8a1bd6c71428300fa3c0baefea3b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f4ffc2d4e80a38cc2852943d7d0e099afe2f3778bc4b4c17c3e39cc8aa2757b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CyclicCubical/Variant891e852e056edc393ce46c54a328f68579b657716a5ea6bb10a9202b9dea3d98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
