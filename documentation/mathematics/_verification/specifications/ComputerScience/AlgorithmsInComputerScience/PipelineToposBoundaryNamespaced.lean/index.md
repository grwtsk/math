# Verification target: Pipeline Topos Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "478114bc2c56596bb09dbdf80817df4ad7e0a5b8",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantc51513cc95307e0ce26fc7ff32a1610c8692c3e546d284df346829db0fccc640.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `478114bc2c56596bb09dbdf80817df4ad7e0a5b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantc51513cc95307e0ce26fc7ff32a1610c8692c3e546d284df346829db0fccc640.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantc51513cc95307e0ce26fc7ff32a1610c8692c3e546d284df346829db0fccc640.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PipelineLeafKind](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelineleafkind.md) | 18 | `declaration-track:095d667a62ab3d24155a9f56d8c88ec0d8f3441ce1abd011f600b12e6d1a6de9` |
| 2 | `def` | [label](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/label.md) | 31 | `declaration-track:1b142d15fb8680de621d0852177c5b45484c24c7f68204b5029a97d0ee455b06` |
| 3 | `def` | [pipelineLeafKindCover](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelineleafkindcover.md) | 43 | `declaration-track:4d3fe7f30704106fc9a94495bdfdc0c8af3b79be629f222327f944586c540958` |
| 4 | `structure` | [PipelineLeaf](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelineleaf.md) | 53 | `declaration-track:dc5b8567fc457f5a9dc2d2fc9b524eeaa47c3c5601c34c5514ae220a5226cdc1` |
| 5 | `def` | [requiredFlags](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/requiredflags.md) | 63 | `declaration-track:86e58f5c9546f31512a6a3525f211f7179d72fa5d9c06f623a300ad4550fb8c4` |
| 6 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-5.md) | 66 | `declaration-track:a72e9b488ca5395cd6fbfd310c8b5c2140c24d09c2ccc249d695736203de1789` |
| 7 | `theorem` | [admitted_iff_required_flags](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-iff-required-flags.md) | 69 | `result-track:26676e0a2bc069733245e57b4fb39c38e38872f2c73aeef81922150b37ff143b` |
| 8 | `theorem` | [exact_flags_admit](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/exact-flags-admit.md) | 73 | `result-track:5d1f5d80ba8782640cfe0d48bc5b013d537482f5c6803a2ff78b3865b7cfd48d` |
| 9 | `theorem` | [compressed_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/compressed-refused.md) | 82 | `result-track:d121cce8b7e1de355ab40cb599512fd4fc20455d71a1b578b2e22935815aa706` |
| 10 | `theorem` | [overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/overlap-refused.md) | 92 | `result-track:53b6e17864b04cda75a15204ab6f5c421f6580b5b056430fb9fdea38cae5e0fc` |
| 11 | `theorem` | [silent_residue_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/silent-residue-refused.md) | 102 | `result-track:fccdcd3b71efff594b2401a80fa89dff8a15994c9f5dba87b18dd574e9f2de30` |
| 12 | `theorem` | [theorem_claim_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/theorem-claim-refused.md) | 112 | `result-track:e46b120e9fc65598b3a820e80eaa119608e0af5697c5589757519a53e347dc3f` |
| 13 | `structure` | [PipelineLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelinelocus.md) | 124 | `declaration-track:cd0a96ab075edcc29db273a1d95c9d78d98d2a0247ab7bbe3434f02736c14a05` |
| 14 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-3.md) | 134 | `declaration-track:6c9d8e1394f08e41933c3a2a03b5373049780ec1af7b294661b109bcb60d01f4` |
| 15 | `theorem` | [singleton_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/singleton-admitted.md) | 140 | `result-track:cdb7fb83bd44f58d1c8bd35326ba2faf40867b3cd49973b770bc252e3b00d4ae` |
| 16 | `theorem` | [missing_common_root_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/missing-common-root-refused.md) | 150 | `result-track:3e979715f4b31671996c16e36ada3a83184203da1cf388360ba2db83b86a094f` |
| 17 | `theorem` | [duplicate_overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/duplicate-overlap-refused.md) | 162 | `result-track:93d1b29bb3ab567d49ecf63e90ef4f1391210444dd42ceb8314ef31fbfb27f71` |
| 18 | `theorem` | [theorem_authority_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/theorem-authority-refused-source-edition-2.md) | 174 | `result-track:c5094919eaa82c91e660785bbb12b7a0891836aea50c6a4af6ee38171f863411` |
| 19 | `structure` | [SourceProjectionFunctor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/sourceprojectionfunctor.md) | 188 | `declaration-track:acb41162e7c83edce64f4da6f75feaab3cc3a87021ef89bfb83f89d21f7f6fd9` |
| 20 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted.md) | 198 | `declaration-track:44f9dacdb1e954c701f11559f41ac8f615efe05fec56f90e10860d5587bae98b` |
| 21 | `theorem` | [exact_preservation_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/exact-preservation-admitted.md) | 203 | `result-track:da6f2eeb31f82adab2b5d749e7f5a166c9cbea6efa110f02c8b540e4694a627e` |
| 22 | `theorem` | [digest_failure_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/digest-failure-refused.md) | 212 | `result-track:8e9a7dbc0fea01cc4a8dc7be4d80923bbed70a698dbcd27ce5abbc007d793058` |
| 23 | `theorem` | [theorem_authority_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/theorem-authority-refused.md) | 223 | `result-track:810e85706027663aa5c6f142f838de0cccd3c88184914c33d9c156190370be11` |
| 24 | `structure` | [PipelineLatticePoint](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelinelatticepoint.md) | 236 | `declaration-track:65794399a7e7d7959b27e09f6593b9621f07fd74392c23a0ab44b7e6c96ee2fd` |
| 25 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-4.md) | 246 | `declaration-track:6ec1be00589ee25196625b09a7c2c96667d5ec1f2c44162c8e5920274c416624` |
| 26 | `theorem` | [exact_support_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/exact-support-admitted.md) | 250 | `result-track:19fbf08e78094db7451aa4d3a3d22815d71390bb1262f1d569f9640d0615a1f1` |
| 27 | `theorem` | [infinite_support_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/infinite-support-refused.md) | 259 | `result-track:8cde631149dad064d593a3f7ab6cdefc78b255aa6b7ca0f07d666379eacbf1fd` |
| 28 | `theorem` | [hidden_overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/hidden-overlap-refused.md) | 270 | `result-track:63b92ec907d286b43a2ee9d1507283bc2a8d540c133394384b04b59e5a8fae1c` |
| 29 | `structure` | [BinomialFlipGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/binomialflipgate.md) | 283 | `declaration-track:c0de4e14dea62c49f22eb15751e85f6cc8191b1dd25b139bf0c01f1a06e98080` |
| 30 | `def` | [flips](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/flips.md) | 295 | `declaration-track:f32f25a8273e52cc25c85fb996c801cff89b89bada942a49f6b0063968231d28` |
| 31 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-6.md) | 301 | `declaration-track:bc48237fda16f10d8ab9b2a8ca9cecab90508be2e6909bfa672e693c9b8b3590` |
| 32 | `theorem` | [zero_to_one_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/zero-to-one-admitted.md) | 307 | `result-track:105fda5231dfe735eb7378f01a7318530ddd2c0e590b803abadaa6892c4d06a7` |
| 33 | `theorem` | [one_to_zero_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/one-to-zero-admitted.md) | 318 | `result-track:b4c0383e04ff3e998b35d49a70003705d0de19ae5abd311b617e57a43beb7fa2` |
| 34 | `theorem` | [no_flip_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/no-flip-refused.md) | 329 | `result-track:e1ae43ee29ebfd480158b98742d311ca3ad2e2d161c0847c9076f3239d49a8f7` |
| 35 | `structure` | [MonomialTorsionScatterGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/monomialtorsionscattergate.md) | 344 | `declaration-track:9a8dc64c8dda96172ca5133436101e8a21313a630ca0e9c44a97cde2b783c210` |
| 36 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-2.md) | 355 | `declaration-track:4a402cd6038e0f822b40b4bbf2b06fe24b33d9774ecd25c4926794579e122cd6` |
| 37 | `theorem` | [exact_scatter_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/exact-scatter-admitted.md) | 361 | `result-track:1235f1af1cc80fbcdf3033acc97183a7b488aac2141be3e4f1d13df3e213dca5` |
| 38 | `theorem` | [unordered_torsion_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/unordered-torsion-refused.md) | 371 | `result-track:5e29a728eb113b718ff5a1f7dcb83fab35c33cb4af539c4bca03ed70c203cd37` |
| 39 | `theorem` | [descent_missing_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/descent-missing-refused.md) | 384 | `result-track:3cb8b2eaa368366a21e22783ee9ffdff886389268605a5fc7aed86ab6db65bc3` |
| 40 | `structure` | [PipelineToposBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelinetoposboundary.md) | 398 | `declaration-track:e2b6d24caaa168e32d42143a703b40f02585be1047bc6cd64af63878b01e6507` |
| 41 | `def` | [fullToposConstructed](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/fulltoposconstructed.md) | 413 | `declaration-track:50508d509fe6646c99aaf5d8975f474eba8bb0096e10d8c87b84bd28f61995f7` |
| 42 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-source-edition-7.md) | 416 | `declaration-track:cea50fb2fc1e404a5eef79473a0f7b4e28d2834f250fc3cb1bb51cc81c7436e6` |
| 43 | `theorem` | [full_topos_claim_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/full-topos-claim-refused.md) | 423 | `result-track:9f33edfea72a9e81390f2f413c692a777dd993ef9f41ae6fb3cc438695afc90d` |
| 44 | `theorem` | [admitted_boundary_has_no_full_topos_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/admitted-boundary-has-no-full-topos-claim.md) | 447 | `result-track:c80c38b816338697448813cff4b28c748e3ef4c28ace086c392ef7ae60e86ceb` |
| 45 | `def` | [pipelineToposBoundaryResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelinetoposboundaryresidues.md) | 459 | `declaration-track:d8fc9a4a9f7a45eaee0fc515e282477a2eb13c53c418a65e372ad972b4050f7d` |
| 46 | `def` | [pipelineToposBoundaryNonClaims](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundaryNamespaced.lean/declarations/pipelinetoposboundarynonclaims.md) | 471 | `declaration-track:f4eb263d88e032a8266e0f52f32bf136ff7175226ef6ac0784841d9a71a0f7dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ff996b1b7ae43827c667697c2ef181d39d1452d73c309e2f442f08fb9b6cd2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantc51513cc95307e0ce26fc7ff32a1610c8692c3e546d284df346829db0fccc640.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantc51513cc95307e0ce26fc7ff32a1610c8692c3e546d284df346829db0fccc640.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
