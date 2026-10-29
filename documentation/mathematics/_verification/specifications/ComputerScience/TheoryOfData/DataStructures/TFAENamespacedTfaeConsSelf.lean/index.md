# Verification target: TFAENamespaced Tfae Cons Self

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74fe8dac226dcb161c28ac1f7889999df8bbbce9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74fe8dac226dcb161c28ac1f7889999df8bbbce9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TFAE](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae.md) | 32 | `declaration-track:4f1821fe6c89403471cc6dd99fa5c478d438baa93d00f712549972b62cdb22af` |
| 2 | `theorem` | [tfae_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-nil.md) | 35 | `result-track:fd5240e53d8ff4de240bcf9afcb8aca1ccda1310a5c5d4baf074f871fafddc2a` |
| 3 | `theorem` | [tfae_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-singleton.md) | 39 | `result-track:09b9c5621fd8557c021bd91b8f8e81d17581e28f97650c9386f77c16108cca4b` |
| 4 | `theorem` | [tfae_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-cons-of-mem.md) | 41 | `result-track:cfbaecf760f561045bcd928382d374bbe7fd8ea0129af3464ef5668241c73eb9` |
| 5 | `theorem` | [tfae_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-cons-cons.md) | 51 | `result-track:83ee9ef5e734b079611b41d22cc3a03cd782cb4b89ef3ae0a6e4a08e4e217153` |
| 6 | `theorem` | [tfae_cons_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-cons-self.md) | 55 | `result-track:a4ef811ab0b5b0add265b06e5abcfcb9818fc9cd2d6614db1e6ea67748965efc` |
| 7 | `theorem` | [tfae_of_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-of-forall.md) | 58 | `result-track:fecb36db4cd2e9e5ddcd7236e26bbd88a2b9542bb9d46bb21b6af0b1fa707c41` |
| 8 | `theorem` | [tfae_of_cycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-of-cycle.md) | 61 | `result-track:fed5c7ea4df5eb8f0d7457b3a3b5ba41d3ca1d1389ce4d4ab1bd33d326f1ab86` |
| 9 | `theorem` | [TFAE.out](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-out.md) | 71 | `result-track:cc76279959fc0e0dada70f393f25801973c311112068d2b5223f2e7328aa1c3c` |
| 10 | `theorem` | [forall_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/forall-tfae.md) | 89 | `result-track:740b9ae4c66bb1660a7248b06b55cd0390e58b5e862fca188a8aa58d2364ef0f` |
| 11 | `theorem` | [exists_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/exists-tfae.md) | 108 | `result-track:571bf2d3c4f8c7e99be15307d8d46242be571048606df65a13a99ba7ba44709b` |
| 12 | `theorem` | [tfae_not_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespacedTfaeConsSelf.lean/declarations/tfae-not-iff.md) | 115 | `result-track:31e5b60df4029d9fcf99d1541f4d99a627c33d112cf90b83886d4a9b9ad30a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ed58164bbc409af0fc37da835ecbe6f5d9749ab6bfdb9c049364e6e1c8371c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant18ec44930fcb4ba895c48bf671e81bc16269cd8f6c08b7711bb0b49ff2b2291c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
