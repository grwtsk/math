# Verification target: Source Carry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8627081d1622af2dd284b8b8fec8e08b746d17f6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e/Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8627081d1622af2dd284b8b8fec8e08b746d17f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e/Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e/Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PipelineClass](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelineclass.md) | 10 | `declaration-track:b7a2e5ff22dde44970bb3412eed6e7a7c6d64120bdb34a59ff125f3edb78d930` |
| 2 | `def` | [label](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/label-source-edition-2.md) | 26 | `declaration-track:8d69e2a110689df378e7d0995fc8e4e75aa7c8904c189d1ed521a695079aba4e` |
| 3 | `def` | [allPipelineClasses](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/allpipelineclasses.md) | 41 | `declaration-track:656edbc8841badabed210f54ca72ad73276d8637cd92554d997ca93e3ea3314f` |
| 4 | `theorem` | [allPipelineClasses_complete](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/allpipelineclasses-complete.md) | 54 | `result-track:3c1f4d35870e3d179549dfe77b225689eae9f001733022b33ba37834911b5dd8` |
| 5 | `theorem` | [allPipelineClasses_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/allpipelineclasses-nodup.md) | 57 | `result-track:15e1c9e2b7f64aed71d58d8586874cbe08ed07d806c53c71d9d883540e61da98` |
| 6 | `inductive` | [PipelineProofStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelineproofstatus.md) | 60 | `declaration-track:8aea840fd5dd4a614813c1dab6407fa2c0a01420012373622e5bc06ca3387394` |
| 7 | `def` | [releaseAllowed](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/releaseallowed.md) | 77 | `declaration-track:14701c132d359cfe7eb9ed5bcfb5fe8caf6d4470ea8471d817683a20f5a530b0` |
| 8 | `theorem` | [releaseAllowed_checkedLean](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/releaseallowed-checkedlean.md) | 85 | `result-track:be3512e79d9312aca9b5e083f559bb13182cbb3b8ef6318932651ad050d5fe28` |
| 9 | `theorem` | [observedSource_not_released](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/observedsource-not-released.md) | 88 | `result-track:6ae2602dbfd503d3bcfbe98cac37310d01d54cdf6c1de470ee188b29c98314cd` |
| 10 | `inductive` | [PipelineResidueStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelineresiduestatus.md) | 93 | `declaration-track:2ffd3f0eccce468c5d95dcfd55acf376b3701e15e8edc9284f0db1589510cbd9` |
| 11 | `def` | [label](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/label.md) | 120 | `declaration-track:0b8ac71bc10b3a8b9f70c48a63327ad13b92fec21933cc4a0f7969b8b1c583c6` |
| 12 | `inductive` | [PipelineRewritePlan](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelinerewriteplan.md) | 146 | `declaration-track:7bd64abbef0abd36b0a6be7d88256824c6769b138821e4ca256bac896e582f09` |
| 13 | `structure` | [FormalSourceFile](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/formalsourcefile.md) | 163 | `declaration-track:61affdf13752b60998f3f232a32a6836f1feaace5ff7270a0fd035e23ef305bb` |
| 14 | `structure` | [PipelineCarry](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelinecarry.md) | 172 | `declaration-track:08b2f88dc91fab77f4631032a6135c6a6324fc6fcf25848299c00eca939da1e1` |
| 15 | `def` | [preservationOk](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/preservationok.md) | 190 | `declaration-track:c7f59b45a6d7fce410b107e5cfbb75e80c999370eab86d0ffd9fa8ba73be49ac` |
| 16 | `def` | [releaseAllowed](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/releaseallowed-source-edition-2.md) | 200 | `declaration-track:3139084f1091f552bdc5fb4ad0f76a5e8f683923a1e457d3f32f0b61dd6b74d8` |
| 17 | `theorem` | [preservationOk_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/preservationok-exact.md) | 203 | `result-track:fdf8fc047040f761e8c128b1722de458ff1840d6a8925040df36ca381d60db70` |
| 18 | `theorem` | [release_refuses_observed_source](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/release-refuses-observed-source.md) | 224 | `result-track:d72a823c60a780e3f6431eade547533cb532e8a23b1d2c741b7ebf9c959f49eb` |
| 19 | `def` | [pipelineToposNotConstructedResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelinetoposnotconstructedresidue.md) | 246 | `declaration-track:aa4a8ab717c4c80c4d55a6923d2245e1d487d225928721314c51962903380c4e` |
| 20 | `theorem` | [pipelineToposBoundary_is_not_full_topos](../../../../../ComputerScience/AlgorithmsInComputerScience/SourceCarry.lean/declarations/pipelinetoposboundary-is-not-full-topos.md) | 249 | `result-track:98c2c429e043caea38bce9d90c174afc84e8a1db9a8435f4ec0659ec78b6259e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9773d984084af3c87f1348d8ea240cd27bf5d28eb3490a57445932f68eabfe10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e/Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f56616c69646174696f6e2f536f7572636543617272792e6c65616e/Variant7b072e71659b4d7e92ac8155c656fc0643c9ca2a83405ec0f581d39f13e9403c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
