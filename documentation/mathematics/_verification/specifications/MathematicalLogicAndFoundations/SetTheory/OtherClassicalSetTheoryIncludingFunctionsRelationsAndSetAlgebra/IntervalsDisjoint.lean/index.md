# Verification target: Intervals Disjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947747835289ec8e01138d236798b29a4c0e359a",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantb71b8709a3d65cb0c68a02ed6c79cf0b9837509a78403540c2b3950503d23b00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947747835289ec8e01138d236798b29a4c0e359a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantb71b8709a3d65cb0c68a02ed6c79cf0b9837509a78403540c2b3950503d23b00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantb71b8709a3d65cb0c68a02ed6c79cf0b9837509a78403540c2b3950503d23b00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iic_disjoint_Ioi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iic-disjoint-ioi.md) | 34 | `result-track:ce63a19212d5d79f79e4c9e8a2956523b26201c0f916d837ad2199dd7391dcc9` |
| 2 | `theorem` | [Iic_disjoint_Ioc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iic-disjoint-ioc.md) | 39 | `result-track:bca7e31ae1cbca9042b5efe70042a0882148d12619cf0781d78c33e0e2e9dd96` |
| 3 | `theorem` | [Ioc_disjoint_Ioc_same](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/ioc-disjoint-ioc-same.md) | 44 | `result-track:f75e818cc848b5522346193479301a66452229d8f4b4b4ad921e98fb516e1d86` |
| 4 | `theorem` | [Ico_disjoint_Ico_same](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/ico-disjoint-ico-same.md) | 49 | `result-track:2339392e9f0c4b8b62f71695c561362a24719cf1b1145fcff5e3f4ee88c5b0c8` |
| 5 | `theorem` | [Ici_disjoint_Iic](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/ici-disjoint-iic.md) | 54 | `result-track:9cb8136c807f98796dcddbd8b99c592a6502e508b5af21fa6488982b26be8bc2` |
| 6 | `theorem` | [Iic_disjoint_Ici](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iic-disjoint-ici.md) | 59 | `result-track:340b30a53ec5b219413ae31ca6a8cd63c4557b0396344fc4f463f13d9c9bba2e` |
| 7 | `theorem` | [iUnion_Iic](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-iic.md) | 64 | `result-track:bfdd1e1f2ed65f62a25af543f5aa033a3ee138d090fb2abdb3d8622e0380369f` |
| 8 | `theorem` | [iUnion_Ici](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ici.md) | 69 | `result-track:dd36fc5c8a69a0091cec39354905cc3b17a135ac3feb1a094692237eab9543ef` |
| 9 | `theorem` | [iUnion_Icc_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-icc-right.md) | 74 | `result-track:e4e9e057754ade52342692c4e7b49faabfb6814851e4c5a00875a278610d3e48` |
| 10 | `theorem` | [iUnion_Ioc_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioc-right.md) | 79 | `result-track:e62c69255cbf3ea5b5a41a30d90e143c46d5c95d3987cd972facbccd86c574bd` |
| 11 | `theorem` | [iUnion_Icc_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-icc-left.md) | 84 | `result-track:557d3fcca6ef4f0e93dc358c6689867f56e25404cc5b3b57990a0dc57aa4dedc` |
| 12 | `theorem` | [iUnion_Ico_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ico-left.md) | 89 | `result-track:40a491465a3a5c17e00f4f518bbef70a5cfddf95adf7ddf17bc7c6a0d4126be8` |
| 13 | `theorem` | [iUnion_Iio](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-iio.md) | 94 | `result-track:109d72d7470602144fb2c089855dc9a8238896bca38b896c4c8a02ac9b6c8a62` |
| 14 | `theorem` | [iUnion_Ioi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioi.md) | 99 | `result-track:c3e55a9a35eafa1b0b7e407f07df9861aaf56f2d50ad38095d9cface270e9e49` |
| 15 | `theorem` | [iUnion_Ico_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ico-right.md) | 104 | `result-track:0822c62666d7e064d2decbf397560800852b8b353c129a3e7a47a8985305ec94` |
| 16 | `theorem` | [iUnion_Ioo_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioo-right.md) | 109 | `result-track:82bccf3bf96ce2c2ce57096cffd2b9945e67e60183413fd3f3a02af8088cc6fc` |
| 17 | `theorem` | [iUnion_Ioc_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioc-left.md) | 114 | `result-track:092d39cb00708fd54a352e1f1c98204e426b659835b070ce22006a61410c9f18` |
| 18 | `theorem` | [iUnion_Ioo_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioo-left.md) | 119 | `result-track:a7ff6a2c124e5de009103b1f01b68c8abfce6aa9690259aa403f406ded6d137f` |
| 19 | `theorem` | [Ico_disjoint_Ico](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/ico-disjoint-ico.md) | 130 | `result-track:efd7bbf85f67ff2db578bb3e6705ca7d63ec353676994a4cc594c8033cd0d0d1` |
| 20 | `theorem` | [Ioc_disjoint_Ioc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/ioc-disjoint-ioc.md) | 136 | `result-track:c8f40785d793fedc8b764cf1351f125ca4123096f657be4c85e0cad0db9dee05` |
| 21 | `theorem` | [eq_of_Ico_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/eq-of-ico-disjoint.md) | 143 | `result-track:93cc77fbf6eff266a6ffd554e46b81a466bc043990fb0eed7643263e6a9f6c8f` |
| 22 | `theorem` | [iUnion_Ico_eq_Iio_self_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ico-eq-iio-self-iff.md) | 151 | `result-track:a0c2c63e3f4046385957fd46799947a4868309d8a93b15fd0d8ff18e8bb52ad7` |
| 23 | `theorem` | [iUnion_Ioc_eq_Ioi_self_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ioc-eq-ioi-self-iff.md) | 157 | `result-track:0ae4035250b654bc847e88be4760e7e250ac3bdca434ae65912dbb77ce32a65f` |
| 24 | `theorem` | [biUnion_Ico_eq_Iio_self_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/biunion-ico-eq-iio-self-iff.md) | 163 | `result-track:816f90ec44b5f52458511b82cb7d7932f9f80bd5a0e02b7b85c419b306abf5fc` |
| 25 | `theorem` | [biUnion_Ioc_eq_Ioi_self_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/biunion-ioc-eq-ioi-self-iff.md) | 169 | `result-track:08bae9db695404bbb249f6b866c57226910d64ab1625fae253e0b9178a4fdbd4` |
| 26 | `theorem` | [IsGLB.biUnion_Ioi_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/isglb-biunion-ioi-eq.md) | 182 | `result-track:f89583aedc1bee64b7c3e0f9d1288bc8a0e961cc0beeb9929bba948885446cbf` |
| 27 | `theorem` | [IsGLB.iUnion_Ioi_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/isglb-iunion-ioi-eq.md) | 189 | `result-track:e0518d847d7b6e7cede426f0301c9887cb5d897509dd79fd32ec35a592c16c53` |
| 28 | `theorem` | [IsLUB.biUnion_Iio_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/islub-biunion-iio-eq.md) | 193 | `result-track:0640a25726974817483dec891ef044486f611c62dc78b31cbfa86611a8b1023a` |
| 29 | `theorem` | [IsLUB.iUnion_Iio_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/islub-iunion-iio-eq.md) | 197 | `result-track:517a8f8e6aba4872f7ad385fc8de31e8b5dc83d0df4c539a4ab612c5d33aa7d1` |
| 30 | `theorem` | [IsGLB.biUnion_Ici_eq_Ioi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/isglb-biunion-ici-eq-ioi.md) | 201 | `result-track:1c055872a73d840914def168b768e04b7d74c24ab0a3a63b6e8b5c20d3ed36c8` |
| 31 | `theorem` | [IsGLB.biUnion_Ici_eq_Ici](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/isglb-biunion-ici-eq-ici.md) | 210 | `result-track:d27fbac2ada2f4621f119d911c7a4eba52452367b96a9935103d4cb6574115ef` |
| 32 | `theorem` | [IsLUB.biUnion_Iic_eq_Iio](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/islub-biunion-iic-eq-iio.md) | 218 | `result-track:ac97cd018e0dcffed9027354833aad94f9b753ecd56f379252a33e4b563f9f0f` |
| 33 | `theorem` | [IsLUB.biUnion_Iic_eq_Iic](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/islub-biunion-iic-eq-iic.md) | 223 | `result-track:fa7eaa1af00611d76848b4e29b4a309b2a620468e4b18ed3181e08daac9108b6` |
| 34 | `theorem` | [iUnion_Ici_eq_Ioi_iInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ici-eq-ioi-iinf.md) | 227 | `result-track:1e55bf58dfeb956cd5ae75831c829d253416f6dd8fa4196715042e003c06db6b` |
| 35 | `theorem` | [iUnion_Iic_eq_Iio_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-iic-eq-iio-isup.md) | 233 | `result-track:cc9e95760c1bdd6cc89823fda0c5e7ca257d4880c799cf1437aeac9a4265a44e` |
| 36 | `theorem` | [iUnion_Ici_eq_Ici_iInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-ici-eq-ici-iinf.md) | 238 | `result-track:1b334046774caa072c86c25d710b913d07d1293ef7212290c637d1792245f754` |
| 37 | `theorem` | [iUnion_Iic_eq_Iic_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/IntervalsDisjoint.lean/declarations/iunion-iic-eq-iic-isup.md) | 244 | `result-track:c1adb3c71f2e465ca142fbd61d2971197601b64543c3fdf89c598293ee0e2922` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4221810b4686749efd0004871b7932e394c1dd37d2b2a874abdfc727a0179997 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantb71b8709a3d65cb0c68a02ed6c79cf0b9837509a78403540c2b3950503d23b00.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variantb71b8709a3d65cb0c68a02ed6c79cf0b9837509a78403540c2b3950503d23b00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
