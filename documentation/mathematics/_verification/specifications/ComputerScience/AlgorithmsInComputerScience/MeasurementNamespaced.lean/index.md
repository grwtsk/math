# Verification target: Measurement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad9aa5f8f2613329036fb635403c2726896de5f4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Varianta1fb44a54f12dfdec76cbd948786da9229749083495d4e1f9c076a6c3edfb03f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad9aa5f8f2613329036fb635403c2726896de5f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Varianta1fb44a54f12dfdec76cbd948786da9229749083495d4e1f9c076a6c3edfb03f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Varianta1fb44a54f12dfdec76cbd948786da9229749083495d4e1f9c076a6c3edfb03f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Gauge.Reference` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/signedheat.md) | 20 | `declaration-track:067824e0e88ce558ba25dc7cb906755379a763704d09c0dfe939af200688ec5e` |
| 2 | `def` | [gaugeHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/gaugeheat.md) | 23 | `declaration-track:cdd5ade2f062d79e667bed077d4a8deea7fb7e27577f529705b1e68da5b3ac84` |
| 3 | `def` | [gaugeEnergyList](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/gaugeenergylist.md) | 26 | `declaration-track:354a56dc035ed353eafb2c356d53e23bcdb51a60b3a217d984c9715971b00103` |
| 4 | `def` | [ratAbs](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/ratabs.md) | 29 | `declaration-track:c967f4d79ffc74433904439052beb582a85efccd6a4471a9deff268fdad1d85e` |
| 5 | `def` | [KEqual](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/kequal.md) | 32 | `declaration-track:360fd94d90eae6934ac542579b8466e19f090d74b622bbe1b4de79ee552b1d37` |
| 6 | `def` | [KResidueHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/kresidueheat.md) | 39 | `declaration-track:dec32b59c5ab576d88cc260bcbcd0cb374d86e7c82ef684810785721c2ee30fd` |
| 7 | `def` | [BoolAndValue](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/boolandvalue.md) | 42 | `declaration-track:e65c8b60de19b45aa97bcf3741df04108988a41f116af882ac799cea36b853b5` |
| 8 | `def` | [BoolXorValue](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/boolxorvalue.md) | 45 | `declaration-track:38eb9953839f0229bf8eba34788780982cfd5d7290a780eb6a22b1737c955dc9` |
| 9 | `def` | [LowerBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/lowerboundaryk.md) | 48 | `declaration-track:bb3c00f35b95a201a4d4a13b214895ec95f979e3065c82a91a59caa749b8fd90` |
| 10 | `def` | [GreyBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/greyboundaryk.md) | 51 | `declaration-track:4acf0a7adaac8796c7493741712d2028eefb8249a7951476bd12f4c6262fb3e3` |
| 11 | `def` | [UpperBoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/upperboundaryk.md) | 54 | `declaration-track:f37930f701904eb012a6e149ab7b6a462deefbacb021aaca1bccbb05e25556ed` |
| 12 | `def` | [BoundaryMemberK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/boundarymemberk.md) | 57 | `declaration-track:6916c04120594571923b0d428fa0228d1b7c6159beb7a04f18b2ecb67216d262` |
| 13 | `def` | [L1Norm](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/l1norm.md) | 60 | `declaration-track:00f878c7610d990756ca23e997d0064950e158297aa35c451da1682729fbaca7` |
| 14 | `def` | [OnL1BoundaryK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/onl1boundaryk.md) | 63 | `declaration-track:7c138b0b9e2f95171cb84911edf66f0545aba8863f36e8d3f1fb2b7d960ab34d` |
| 15 | `def` | [L1BoundaryResidueHeat](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/l1boundaryresidueheat.md) | 66 | `declaration-track:36c9cb94d65a08df2ed4f02a3fef898ebd333a0fddfdd452490d0db21aa1c192` |
| 16 | `def` | [crossPolytopeVertexCount](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/crosspolytopevertexcount.md) | 69 | `declaration-track:bf76d56aabf671f3798a815bd73dfec7ca6922c0ebeaa1896f3a840dae74576c` |
| 17 | `def` | [crossPolytopeStrutCount](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/crosspolytopestrutcount.md) | 70 | `declaration-track:eb7fca6b18a4ce179bde013d20743e2f01a519c8d90dbf39c55d48c52983567d` |
| 18 | `def` | [crossPolytopeFacetCount](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/crosspolytopefacetcount.md) | 71 | `declaration-track:a2b302a8c7c6144b5f6e349aea5c8a4e7af46b5137f0774f5b6ec117cbf3652e` |
| 19 | `inductive` | [KSymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/ksymbol.md) | 73 | `declaration-track:8fc5ff86cb5558f4580ebf2be3ce19421a010883a5c6252a43c8400520d78f33` |
| 20 | `def` | [CanonK](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/canonk.md) | 80 | `declaration-track:6ef2f253d9a05efd5f95979dc15af3da3e51bc126e2a2e8b82aed5225e4177ec` |
| 21 | `inductive` | [KBoundarySymbol](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/kboundarysymbol.md) | 83 | `declaration-track:f64a72aed8049928ffe9d7aff455d9a30a59f82b88c16079dd23839240250a4e` |
| 22 | `def` | [binaryBoundaryVariation](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/binaryboundaryvariation.md) | 90 | `declaration-track:918989fa6c53f503468c1e11b8525a6bd6be10ae1099a154eeb39e7b7570fba2` |
| 23 | `def` | [binaryBoundaryXor](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/binaryboundaryxor.md) | 95 | `declaration-track:dc81e5f311d67a54f419bec5bbf795ddd719f28f0f7c34e23d5a3f6c662d741a` |
| 24 | `def` | [boundedMeasurementExportDisclaimer](../../../../../ComputerScience/AlgorithmsInComputerScience/MeasurementNamespaced.lean/declarations/boundedmeasurementexportdisclaimer.md) | 98 | `declaration-track:0558bed89d1b5fae8bf059116686f86b0e74f848a19a04ddb66d7d22b0fb6676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebce0aaf5058a1c56603dd42b182aadada90fa5988be2697e19caa3cc11a4e84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Varianta1fb44a54f12dfdec76cbd948786da9229749083495d4e1f9c076a6c3edfb03f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Measurement/Varianta1fb44a54f12dfdec76cbd948786da9229749083495d4e1f9c076a6c3edfb03f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
