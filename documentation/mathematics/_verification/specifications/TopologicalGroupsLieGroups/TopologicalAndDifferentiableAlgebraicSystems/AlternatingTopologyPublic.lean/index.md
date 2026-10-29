# Verification target: Alternating Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66acc2bc41e4175777a75bc965c24ba9b1722ec1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66acc2bc41e4175777a75bc965c24ba9b1722ec1`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/insttopologicalspace.md) | 35 | `declaration-track:9c66756e01cf7b10b4073fe8355772087e5a50dae39fc47a379aeb61fc0789f6` |
| 2 | `lemma` | [isClosed_range_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isclosed-range-tocontinuousmultilinearmap.md) | 38 | `result-track:d4aff8475dcc2a47cd08f1d6fb3bdd0fb67dc88c9566ee5e3aa5b85033cdbbc2` |
| 3 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instuniformspace.md) | 51 | `declaration-track:447f32cf629f6bce64d7ff1101128b66d1f6edfadb182eca159a15c1db5929c1` |
| 4 | `lemma` | [isUniformEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isuniformembedding-tocontinuousmultilinearmap.md) | 54 | `result-track:fd15704a482f6bd4b3d3be626f30d915dc2e27a5000b9f95f8ccec5bf475df8b` |
| 5 | `lemma` | [uniformContinuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/uniformcontinuous-tocontinuousmultilinearmap.md) | 59 | `result-track:7131fca11cec0f268c8ce2656462c4e164212954299fa2105042a7aee1deb76e` |
| 6 | `theorem` | [uniformContinuous_coe_fun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/uniformcontinuous-coe-fun.md) | 63 | `result-track:c78ee03f4441033d277b48720a83405357d2553441fac008643efcb82f0b9f47` |
| 7 | `theorem` | [uniformContinuous_eval_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/uniformcontinuous-eval-const.md) | 68 | `result-track:85fab247be41a77e666a79d23463d6bbabcffe3be2fd82702069c69e9bf89cae` |
| 8 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instisuniformaddgroup.md) | 72 | `declaration-track:ad915643a3c2f42a867cff748ed9f62b6d6e3bd4f55076a2a07e37a9c3918d4f` |
| 9 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instuniformcontinuousconstsmul.md) | 76 | `declaration-track:2b21a1adc088990e9d8eaaf94998003146ed994bc175fb5937dc007211f42c2e` |
| 10 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isuniforminducing-postcomp.md) | 81 | `result-track:55001bd37ee2aba4788d78cdec0b35000d385484d54c17f395f9ce7f9106874c` |
| 11 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/completespace.md) | 93 | `result-track:6315a434413d7a8f507f28ef98a8f10cdd5334fd0ea677284be9a4e0dc93d6d2` |
| 12 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instcompletespace.md) | 108 | `declaration-track:7ceaad8dc376788c975dc1569e513ffab944bc957d1c1d8774422e0061287453` |
| 13 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isuniformembedding-restrictscalars.md) | 119 | `result-track:1ca5ecdf2e20e86265603e7beab51a013f5c6bedc17f296575ac755b46ef3faa` |
| 14 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/uniformcontinuous-restrictscalars.md) | 125 | `result-track:5a4418ce14522bd1de4c626233adff5f48962e50211583051003ca39f4740f0d` |
| 15 | `lemma` | [isEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isembedding-tocontinuousmultilinearmap.md) | 135 | `result-track:501848e4999d4238ac791fe5279e46e8a1b57d66fb39cb7da0f10e2912edf4e3` |
| 16 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instistopologicaladdgroup.md) | 141 | `declaration-track:f49d2f1715edbdcc864523e4d3d719590dacb8721933d296c0130f709986c80d` |
| 17 | `lemma` | [continuous_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/continuous-tocontinuousmultilinearmap.md) | 146 | `result-track:f4278269fceb067d5fe31191d759611d899d244b0a23caaacb8fdf14144b968e` |
| 18 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instcontinuousconstsmul.md) | 150 | `declaration-track:43ab2903e91e93a365d3b507de9c11623eecfe9895aa842decf27c6a985fa480` |
| 19 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instcontinuoussmul.md) | 155 | `declaration-track:f2dacdc697892b4a99f725479793ca388d9df3c1eb7e843447b8dfe408846603` |
| 20 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 158 | `result-track:ca73e72ccbe318494bc5e27cb23f373e52e000ddcee382e76268b3cf55772d0d` |
| 21 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/hasbasis-nhds-zero.md) | 166 | `result-track:7fd6c962f9173b8d0b2f323125edfead038a11da0ba661ff130edf985a17fc4d` |
| 22 | `def` | [toContinuousMultilinearMapCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/tocontinuousmultilinearmapclm.md) | 175 | `declaration-track:28a36e034c5ca92fb793cc800beb5b0d9201bc219d6b8ab2b19fd623df8cd549` |
| 23 | `lemma` | [isClosedEmbedding_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isclosedembedding-tocontinuousmultilinearmap.md) | 184 | `result-track:109d2356645494bc40603a4e4b332b153bf243711ea85cf6349818f12b13add6` |
| 24 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instcontinuousevalconst.md) | 189 | `declaration-track:fc946dba6fcc2b37db8e971c27781182d6ba72f5d8ebf5a5bd8206e904bb2033` |
| 25 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instt2space.md) | 192 | `declaration-track:47c5462f82c4d01538a640af8aed0234ecad43051cffd6663b506c2d0f187a8c` |
| 26 | `instance` | [instT3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/instt3space.md) | 195 | `declaration-track:950cad574e796e25e1f3e8db99465c0c6c5d7d0af1465d2a4948c322ec565b89` |
| 27 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/isembedding-restrictscalars.md) | 203 | `result-track:fa0a9f5db72fd200bc4f44f5963fe157941a4eba7633ca90772d7ca2bec3e365` |
| 28 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/continuous-restrictscalars.md) | 210 | `result-track:e94f9c6ca02c35f98396dbd8b699e80374db2b16fc096aaacfd96b53ac6bab5c` |
| 29 | `def` | [restrictScalarsCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/restrictscalarsclm.md) | 217 | `declaration-track:13f3a17366ebdea1ef277b38b74eb663df3ec2808da5bd58b5b51b1614d6c712` |
| 30 | `def` | [liftCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/liftclm.md) | 234 | `declaration-track:bc0ad5866a39d5845ccf2dac7e8263c6bf54d352950b88747e5e420296159cc1` |
| 31 | `lemma` | [liftCLM_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/liftclm-apply.md) | 242 | `result-track:2f2fa9f88ea33fbd9901051ef246bb008d66d44ed216cf77963e8947d69b0efd` |
| 32 | `def` | [compContinuousLinearMapCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/compcontinuouslinearmapclm.md) | 257 | `declaration-track:90b8d48c9d63f401f29f049f6f55164ce25a89cc9f97e6f05c723902493695da` |
| 33 | `def` | [apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/apply.md) | 270 | `declaration-track:27f1c2dd8477fa6c895b94015ea6ede3372a9aa753bdee446092b15070a16e0c` |
| 34 | `lemma` | [apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/apply-apply.md) | 278 | `result-track:f0cba5e9e0fe045729b531af75a9ab558a0669029ae2508e12b3380bf85b072f` |
| 35 | `theorem` | [hasSum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/hassum-eval.md) | 284 | `result-track:7912fe4e0857add9d442902d7c0d8a6eeb35aee87a69ff5e5e423e227f713f28` |
| 36 | `theorem` | [tsum_eval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/tsum-eval.md) | 288 | `result-track:30a877ca5d0b44f69ef18c8752943dfa10b8dac509b6fd9faef029e2f4cd76a9` |
| 37 | `def` | [compContinuousAlternatingMapCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/compcontinuousalternatingmapclm.md) | 311 | `declaration-track:6d304ee18f7fc625081d3ec07a07681202abc8b9dbf8abe2cf3bdbc17c3f1810` |
| 38 | `def` | [continuousAlternatingMapCongrRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/continuousalternatingmapcongrright.md) | 349 | `declaration-track:45d3f0686e63cc57e49ddd6ab23deba2ea28a1cd2408c6fe4a814eac94510f46` |
| 39 | `theorem` | [_root_.ContinuousLinearEquiv.continuousAlternatingMapCongrRight_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/root-continuouslinearequiv-continuousalternatingmapcongrright-symm.md) | 359 | `result-track:8ab7f18de85922321c36c74d571b95a35f0923e85f899c8e0171bcfa41c8d579` |
| 40 | `def` | [continuousAlternatingMapCongrLeft](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/continuousalternatingmapcongrleft.md) | 370 | `declaration-track:9b9c14a64f4f5d905e57ed4525da93ead32ce0741b23df28e6480aa4ed49d1b1` |
| 41 | `def` | [continuousAlternatingMapCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/continuousalternatingmapcongr.md) | 383 | `declaration-track:4ec71dd413849d74989ba6adf5a7a5c972bdb644d2144e888f29706ff6c055a7` |
| 42 | `lemma` | [coe_continuousAlternatingMapCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingTopologyPublic.lean/declarations/coe-continuousalternatingmapcongr.md) | 387 | `result-track:1b3fb6349d84651f33126f9912447970edfd028ddc7d5f1d1177846de79788ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0f819cbdeb87666b6ff4f7dca16cfffb1024411ddba5268b6180d4aac3980a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant08ea978cd710ef37a6aa6e01b85c8f15f3fd5011bd3539623a4fbeb0cd4d5d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
