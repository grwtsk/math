# Verification target: Pipeline Topos Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59422f0f643edc3173b5cef806fdce54755d22a3",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantacdcb11b071c39041bc4744d7964d6b983742db96a05981e790102b6636ae07b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59422f0f643edc3173b5cef806fdce54755d22a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantacdcb11b071c39041bc4744d7964d6b983742db96a05981e790102b6636ae07b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantacdcb11b071c39041bc4744d7964d6b983742db96a05981e790102b6636ae07b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit0.Bit1.Bit0.Bit0.Bit0.Bit1.M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PipelineLeafKind](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelineleafkind.md) | 10 | `declaration-track:95fc1879747b7956ce66515549b10838c2cad2434b7a853e7a9126ed7920b0b1` |
| 2 | `def` | [label](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/label.md) | 23 | `declaration-track:5e1c9575b00e3b5e38a0fe52ecca16fdabaae39913d53970bd7c67acb5168247` |
| 3 | `def` | [pipelineLeafKindCover](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelineleafkindcover.md) | 35 | `declaration-track:b4ab4c81cbdd08d3ac742f0cbde183ce19ccbd0909c969ab2733f6def1b890f4` |
| 4 | `structure` | [PipelineLeaf](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelineleaf.md) | 45 | `declaration-track:63c6a58e5e1edeef48103caddb1cf7a0cab592dde4f06697fb59cf8a86fd2c29` |
| 5 | `def` | [requiredFlags](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/requiredflags.md) | 55 | `declaration-track:e6985c31b4d7c66eab8f8175e44dffdd43a9a8b37db771490182a11ed6724876` |
| 6 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-2.md) | 58 | `declaration-track:32aeb766c03d9dcc85a08ad703a26c3cfa2545dc9caa6a8037240ecc4c320ea4` |
| 7 | `theorem` | [admitted_iff_required_flags](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-iff-required-flags.md) | 61 | `result-track:a36489673d3972f9c45e80379736abd7248751d94a49d3ca8c75f23fa2f7c7ca` |
| 8 | `theorem` | [exact_flags_admit](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/exact-flags-admit.md) | 65 | `result-track:ddc6f9f89447608bdea296581c00ad07c199463255ff26681d11d9ddd6b3724b` |
| 9 | `theorem` | [compressed_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/compressed-refused.md) | 74 | `result-track:c1d2d533c493497bd9b40c11d349b83f3fba8e8da7b550b4a53290aa43b4383c` |
| 10 | `theorem` | [overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/overlap-refused.md) | 84 | `result-track:a267744ef0a4910354c330ff2cc2c6a753e50be3ed294e5d74b4e2ac67097796` |
| 11 | `theorem` | [silent_residue_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/silent-residue-refused.md) | 94 | `result-track:bd21d04af3a245c44d6218d6589e08736655538499ce801844c956d13f976b35` |
| 12 | `theorem` | [theorem_claim_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/theorem-claim-refused.md) | 104 | `result-track:6b76f236222ef8a917da4432e9bdfa0d6ad19676d23bd0a470a282181e0f4766` |
| 13 | `structure` | [PipelineLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelinelocus.md) | 116 | `declaration-track:3fb7e2fdddc61ee665332518d3e9dff7dfff6a48799646752c642de3b51c5636` |
| 14 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-7.md) | 126 | `declaration-track:f686c2aaad87913777dbac937f51f9f8f2f7d820b09602743832dd8d425337d6` |
| 15 | `theorem` | [singleton_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/singleton-admitted.md) | 132 | `result-track:cad3275d30b38e33c6f6614399bbf2b076e31af6b4ad688a424658b6d442f2f5` |
| 16 | `theorem` | [missing_common_root_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/missing-common-root-refused.md) | 142 | `result-track:77e49af9dc81fbe8d0ef9e37c537c0961afec85af02d22a8b3891fede570e8c6` |
| 17 | `theorem` | [duplicate_overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/duplicate-overlap-refused.md) | 154 | `result-track:dbe84ec2978de87d120f5538b5becb3810971f7255586004581629dbc617feac` |
| 18 | `theorem` | [theorem_authority_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/theorem-authority-refused.md) | 166 | `result-track:595f973f41244c77f2cc18f7c73e0e5c5dc94af595a2d3e5595e121916facdf2` |
| 19 | `structure` | [SourceProjectionFunctor](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/sourceprojectionfunctor.md) | 180 | `declaration-track:2a9fac3a2e2a3ce618a71c20de613d44ae9b5a29da341c50324a11d2ef2857e1` |
| 20 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-4.md) | 190 | `declaration-track:9b353682b8a61b8012e895e418397f5b486f216c0df2a2ea1e3774639ba24af4` |
| 21 | `theorem` | [exact_preservation_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/exact-preservation-admitted.md) | 195 | `result-track:06d336a7d3bdfedfb3b169ba8546f0be24809b6f8628b90c36ef2c43bbc0f839` |
| 22 | `theorem` | [digest_failure_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/digest-failure-refused.md) | 204 | `result-track:db1734ed06eb4384df67a286d328f788d89ea25ca72fe93c7305868f7d1e439f` |
| 23 | `theorem` | [theorem_authority_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/theorem-authority-refused-source-edition-2.md) | 215 | `result-track:b5017cefc9a8b68de8a928542f7dc6192f9912c7d0b60cb084d8878ec6f5efec` |
| 24 | `structure` | [PipelineLatticePoint](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelinelatticepoint.md) | 228 | `declaration-track:3e8bafc1da99f58528be3b008a09fcc707bec48174524be9eb60cb26703e0183` |
| 25 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted.md) | 238 | `declaration-track:0f1c945b973930450aec9ab70973284a0564ce3b7a5aa10a8ac4b7bf6631b204` |
| 26 | `theorem` | [exact_support_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/exact-support-admitted.md) | 242 | `result-track:a5ed0d47b211f2073174621c5a5e0ca0fa966e854baad608a2746f50d2799922` |
| 27 | `theorem` | [infinite_support_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/infinite-support-refused.md) | 251 | `result-track:df2072cff7dfdcc292fce74c32b020841aa060f4cf2c439de1e139a99aafeb82` |
| 28 | `theorem` | [hidden_overlap_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/hidden-overlap-refused.md) | 262 | `result-track:8860dec5b5fdc369dfa5b6af30caefb3640230aa9bd141ae0712095c43672060` |
| 29 | `structure` | [BinomialFlipGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/binomialflipgate.md) | 275 | `declaration-track:6deaab4650a38c9f2a9e3203a2df9f8f6d84507a66cf3771f99a6bc1a3d763f5` |
| 30 | `def` | [flips](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/flips.md) | 287 | `declaration-track:5d191612183b4f0989c02f3324d179a7c36428da18ec479fd67a58d6d55283bd` |
| 31 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-5.md) | 293 | `declaration-track:a98a5d61cbe373e0a364709b5504d4e95b1306af4343225e7353d94c272acfb5` |
| 32 | `theorem` | [zero_to_one_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/zero-to-one-admitted.md) | 299 | `result-track:027e11ae03094045e9eda512ea992d311239fd1e1c2fc41b849e3b1e297e3f89` |
| 33 | `theorem` | [one_to_zero_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/one-to-zero-admitted.md) | 310 | `result-track:7198a8142d51a9da897d389ce19f28c06ede42a5f831e6b843b4de02d5602441` |
| 34 | `theorem` | [no_flip_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/no-flip-refused.md) | 321 | `result-track:1fe5d9d9a96d4dd629f4257ffd289aff815f631d91a539f99ed65b4aff12ba61` |
| 35 | `structure` | [MonomialTorsionScatterGate](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/monomialtorsionscattergate.md) | 336 | `declaration-track:32d61fc12c89d6b41ac9799584cf1667f742a98122b549145c7ade40b51797b7` |
| 36 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-3.md) | 347 | `declaration-track:52be8e019ef781bfd8fb5d901d614d874f0340fc2280cb15678e7198708941d8` |
| 37 | `theorem` | [exact_scatter_admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/exact-scatter-admitted.md) | 353 | `result-track:5425701991a03e439fe92089c838989c4122e8d162211a176e4c79a4ee4cf27e` |
| 38 | `theorem` | [unordered_torsion_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/unordered-torsion-refused.md) | 363 | `result-track:3e79180d84577a6fa8019417a431536bacd2578ef4f8e072a939623f241c5a6a` |
| 39 | `theorem` | [descent_missing_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/descent-missing-refused.md) | 376 | `result-track:90cf653cd5d4d4e4544de4354a1eeb653dfc7eeeecd564054de4c63e13da7646` |
| 40 | `structure` | [PipelineToposBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelinetoposboundary.md) | 390 | `declaration-track:43c147f76ef8003257e0a158b075107e23957eed44d3712a010a63a54876740b` |
| 41 | `def` | [fullToposConstructed](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/fulltoposconstructed.md) | 405 | `declaration-track:1465da0f5368798c18a2113bf9fd14da081707a67dc481982d882b9d55abf3ef` |
| 42 | `def` | [admitted](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-source-edition-6.md) | 408 | `declaration-track:f46dbd98a46867172d9ec59b5ffdc64ea0a9a076ad3f42ef50fb9164f2da58a8` |
| 43 | `theorem` | [full_topos_claim_refused](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/full-topos-claim-refused.md) | 415 | `result-track:4f5e83ca99c719533004b8515ced0ddd2b0b9bdc913097ca6efcfedf37ff7304` |
| 44 | `theorem` | [admitted_boundary_has_no_full_topos_claim](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/admitted-boundary-has-no-full-topos-claim.md) | 439 | `result-track:cef5b0cc746ebd785c3f6da18714f7bc2c6bdb1c0706a376a3ab97f50aa1014f` |
| 45 | `def` | [pipelineToposBoundaryResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelinetoposboundaryresidues.md) | 451 | `declaration-track:aadaf4efd151c03a1bab97a163f7ba9f46d82d83542d1304528b0c556d1807cc` |
| 46 | `def` | [pipelineToposBoundaryNonClaims](../../../../../ComputerScience/AlgorithmsInComputerScience/PipelineToposBoundary.lean/declarations/pipelinetoposboundarynonclaims.md) | 463 | `declaration-track:1b3a696b091eee55d94fb09643bd15f3cf66a02c215b5fd22837a610f89b4871` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb656354e27f309eb2bdc8b4fff2a406cef9babf17ec81672aa78ac126eec903 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantacdcb11b071c39041bc4744d7964d6b983742db96a05981e790102b6636ae07b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f506970656c696e65546f706f73426f756e646172792e6c65616e/Variantacdcb11b071c39041bc4744d7964d6b983742db96a05981e790102b6636ae07b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
