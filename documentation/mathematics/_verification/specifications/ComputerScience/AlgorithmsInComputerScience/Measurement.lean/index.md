# Verification target: Measurement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8b8700be9d89c088e1dc36b0dbbbc7120759532",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8b8700be9d89c088e1dc36b0dbbbc7120759532`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Gauge.Reference` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/signedheat.md) | 12 | `declaration-track:5074b57d7fdcb3df7af15665685dbe1a2600c9f85a89dfb997fab29b60fd06ed` |
| 2 | `def` | [gaugeHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/gaugeheat.md) | 15 | `declaration-track:f1e785965fadd53d3f93c98736e47e50190db35a4a93cb68614856b5480ee686` |
| 3 | `def` | [gaugeEnergyList](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/gaugeenergylist.md) | 18 | `declaration-track:3940deac6f98bb963ce348807dbe61d955f20eb3916b4372162e7a5cf5d193dc` |
| 4 | `def` | [ratAbs](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/ratabs.md) | 21 | `declaration-track:c0042ff0b840b91652ce984c97cfae2f75647a53caff729038f1b4b5a1192ab1` |
| 5 | `def` | [KEqual](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/kequal.md) | 24 | `declaration-track:8b0a85c67bc7a6b6bc7fd0699926e21407b51aaa21f8b7fd7853b61d1a70e131` |
| 6 | `def` | [KResidueHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/kresidueheat.md) | 31 | `declaration-track:e8534a40bb4038e29e90e090ebe6fd6d3fa06dad94fe2f263d91b25e1767548c` |
| 7 | `def` | [BoolAndValue](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/boolandvalue.md) | 34 | `declaration-track:3f6d5c0b3dd8685c8e190b77bb2c2f073ca93e4aee4fd53f211c1170acbeb6d3` |
| 8 | `def` | [BoolXorValue](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/boolxorvalue.md) | 37 | `declaration-track:d95c8e84062e932210a468d8578f0689b8a7c58c0d87b24c979c5e3abbe4c78f` |
| 9 | `def` | [LowerBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/lowerboundaryk.md) | 40 | `declaration-track:de06fef3dceb641219a999b9e12ff4bd55af761a7b893933f414b7db8aea2467` |
| 10 | `def` | [GreyBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/greyboundaryk.md) | 43 | `declaration-track:072e64a4a082a54f7b478e2b87ba0327393ceb5c6be0fa6fab63fe5477d2f42f` |
| 11 | `def` | [UpperBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/upperboundaryk.md) | 46 | `declaration-track:1719b4df6523bfff652d9db8373c08d49405e9b408080ebbcacd3f6ad6587a42` |
| 12 | `def` | [BoundaryMemberK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/boundarymemberk.md) | 49 | `declaration-track:14c790422b4c60721d416ec4a97c253be1c89e051933f25bfdb76cf0b261ddd7` |
| 13 | `def` | [L1Norm](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/l1norm.md) | 52 | `declaration-track:fcafed847eef565cb316996d3685cf608ce01ad12d6ead2195089b35b208c046` |
| 14 | `def` | [OnL1BoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/onl1boundaryk.md) | 55 | `declaration-track:96cbea3fa67bd7ae344b56ac98b1bd4e629a7fbe8d1fd1fe4174a21f254cb24c` |
| 15 | `def` | [L1BoundaryResidueHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/l1boundaryresidueheat.md) | 58 | `declaration-track:3431808c861fe407b3e996ad0c442a6219e84901d74649779bbc59bb7f9d0b10` |
| 16 | `def` | [crossPolytopeVertexCount](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/crosspolytopevertexcount.md) | 61 | `declaration-track:5af63912110745fe87bd3adab9b39986fd14c68bdb45b3be46c041935241bef3` |
| 17 | `def` | [crossPolytopeStrutCount](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/crosspolytopestrutcount.md) | 62 | `declaration-track:eb616abc815ae2deba4a1bb67b051bbb5f58501fb1a6ab88989c0a105706f35d` |
| 18 | `def` | [crossPolytopeFacetCount](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/crosspolytopefacetcount.md) | 63 | `declaration-track:619c6b00c6a812721f46a7173d951c4ca3b4bec7d29e21c2f436bf0a63418f9e` |
| 19 | `inductive` | [KSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/ksymbol.md) | 65 | `declaration-track:033ec4c67924fa1bc05d100f60deefce1925eb8c4efcd373f0ef833adacca290` |
| 20 | `def` | [CanonK](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/canonk.md) | 72 | `declaration-track:d9119b09340939dfca47bdaa4107a0a0865e4593ea74d5b28099516c975b3cb9` |
| 21 | `inductive` | [KBoundarySymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/kboundarysymbol.md) | 75 | `declaration-track:08de90b67a692dc2af2ad38b30789d7f8caff20654d20d208da7fb72a494e125` |
| 22 | `def` | [binaryBoundaryVariation](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/binaryboundaryvariation.md) | 82 | `declaration-track:fd6b54979b65c14c41a82774a922029dd1c9a4aaa16d5d75db138c6a5b136b8a` |
| 23 | `def` | [binaryBoundaryXor](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/binaryboundaryxor.md) | 87 | `declaration-track:8c9794066b3d47d0caa8e4d6748e42403f71a8cf0503f6bf13b424f5fb9e9801` |
| 24 | `def` | [boundedMeasurementExportDisclaimer](../../../../../ComputerScience/AlgorithmsInComputerScience/Measurement.lean/declarations/boundedmeasurementexportdisclaimer.md) | 90 | `declaration-track:cfbdb8eae1d1a114f182ea522ce7a7bf9cfcad2cd05ce5d4b841b16c8de46dbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96e4df09e44e8c53418a276f33ba8de0e5431ebe717aef4790206d7070207b07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Variant4288d75b5ed308d4c1b4024d785935e86c23b7e7c1d426e4ef3a9f84dffc2dff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
