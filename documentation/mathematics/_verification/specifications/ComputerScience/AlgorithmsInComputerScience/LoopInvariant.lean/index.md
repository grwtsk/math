# Verification target: Loop Invariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3581b5fc70a853a95e5a0001d57003387782edc8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e/Variantf9c9beff190919bc52626c8426cd6777c2df654b5ee14083c8458d9c9f97b7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3581b5fc70a853a95e5a0001d57003387782edc8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e/Variantf9c9beff190919bc52626c8426cd6777c2df654b5ee14083c8458d9c9f97b7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e/Variantf9c9beff190919bc52626c8426cd6777c2df654b5ee14083c8458d9c9f97b7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LoopSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/loopsurface.md) | 10 | `declaration-track:06d358b39617a550519a545c8eaf9254d430593a4a88c26cd561706d01a07d55` |
| 2 | `def` | [required](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/required.md) | 18 | `declaration-track:f98275bf11a3dae0ba804491d03951103af796cdd5580e459d8c31e2176d2f8f` |
| 3 | `theorem` | [required_length](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/required-length.md) | 21 | `result-track:f8577cb3abe91a66178f976f1a0dc13f3ef22aed8891c187d8d79d5dc0ff3cb7` |
| 4 | `structure` | [LoopImprovement](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/loopimprovement.md) | 26 | `declaration-track:4ac96b469f2eb56339384262ec62c6d8d2d3c995144aa2369c73b7366113ad82` |
| 5 | `def` | [closed](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed.md) | 36 | `declaration-track:7a83e1de79f002a9f1ac2520d0f92a2fc43e21a64ea88b821fddbf53e69af916` |
| 6 | `theorem` | [closed_implies_formal](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed-implies-formal.md) | 39 | `result-track:186929e579f4fd95bf17d7d9abe1a98baa4d6a889f26577d075fd548115d7a46` |
| 7 | `theorem` | [closed_implies_rust](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed-implies-rust.md) | 44 | `result-track:3a7781e22308c9708fcfb80ea60fd46d7595f793bf97b2ed4e4b9140c483c0cd` |
| 8 | `theorem` | [closed_implies_docs](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed-implies-docs.md) | 50 | `result-track:a4f209aba827c4eef8504774d3b16cc71623ed1b5bc032e45e2e2ac7027aa3d1` |
| 9 | `theorem` | [closed_implies_nonclaim_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed-implies-nonclaim-preserved.md) | 56 | `result-track:1f6f3490628de7ed5bfcfee29b0029d548258902eeb79fd198c0988d8e24cfdd` |
| 10 | `theorem` | [closed_implies_residue_tracked](../../../../../ComputerScience/AlgorithmsInComputerScience/LoopInvariant.lean/declarations/closed-implies-residue-tracked.md) | 63 | `result-track:1db299072f983c1aead01e3aec5e16fa9123c9b0259609959f624e929fe2bb89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=463938b8e5be3737454996304c094f2b265d5e3fe2a141cdc8391da25590d80d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e/Variantf9c9beff190919bc52626c8426cd6777c2df654b5ee14083c8458d9c9f97b7c1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f4c6f6f70496e76617269616e742e6c65616e/Variantf9c9beff190919bc52626c8426cd6777c2df654b5ee14083c8458d9c9f97b7c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
