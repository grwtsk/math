# Verification target: Irreducible Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf95ed227c51fc4bd0e9cda6d524ab3b3a538b7d",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variant643a914ee646af7af08906cd4461e38c8b6b78f038711570ca3bc8170f2ff750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf95ed227c51fc4bd0e9cda6d524ab3b3a538b7d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variant643a914ee646af7af08906cd4461e38c8b6b78f038711570ca3bc8170f2ff750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Irreducible/Variant643a914ee646af7af08906cd4461e38c8b6b78f038711570ca3bc8170f2ff750.lean.json)

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
| 1 | `def` | [SupIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred.md) | 51 | `declaration-track:419c52856225afc02ea5148d5eebc37f0611dbaa5f427caad54b81812f373162` |
| 2 | `def` | [SupPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime.md) | 58 | `declaration-track:fb969c1a6fed96cf42c0ef7081f2a724d597536516aed8f802ee7932eede28d6` |
| 3 | `theorem` | [SupIrred.not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred-not-ismin.md) | 62 | `result-track:da1d017c4c31c2b0e2ab1d7109b4580d8707168a98fb6a50a2849a7cea039138` |
| 4 | `theorem` | [SupPrime.not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-not-ismin.md) | 66 | `result-track:18a5bbd158b54961226e2acbae95c32c0d55aaa08d0201ecc3d2bebea96ee16e` |
| 5 | `theorem` | [IsMin.not_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/ismin-not-supirred.md) | 70 | `result-track:73cb5ca975cd27fe47c7c5dbd97eb7342add507b15f3dec348759472359fff48` |
| 6 | `theorem` | [IsMin.not_supPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/ismin-not-supprime.md) | 73 | `result-track:b92c9f597d6dd57ae251a4bd9e038e65759864b6fdfb4b3e1866307e60bb54d1` |
| 7 | `theorem` | [not_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/not-supirred.md) | 76 | `result-track:e7e33c5e61ab7306973bde328b7be5644fcd7cf1449e10d07a83ed932e4c6029` |
| 8 | `theorem` | [not_supPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/not-supprime.md) | 83 | `result-track:6779e62debd6faa818846b5355bd5a329f9d8efb8983d350562d38706eb1eb33` |
| 9 | `theorem` | [SupPrime.supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-supirred.md) | 87 | `result-track:b9f4a532df71110895bbbd2bdd1819726b758482a2181be66d6466df777b502a` |
| 10 | `theorem` | [SupPrime.le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-le-sup.md) | 91 | `result-track:41ad4b2ad9896c94c4c8dd46f4cb3bccbf3e0d81de3420157e1913d6a6f1ddbf` |
| 11 | `theorem` | [not_supIrred_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/not-supirred-bot.md) | 97 | `result-track:ead7e67c26c93b941104cd05dd8954a1ebceb649df2ebd43112bd043683eef14` |
| 12 | `theorem` | [not_supPrime_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/not-supprime-bot.md) | 101 | `result-track:58215b022bd908d26e28cac00106429a622c7896610d94a1f7bd81b74c4d64c8` |
| 13 | `theorem` | [SupIrred.ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred-ne-bot.md) | 105 | `result-track:fc3e4d24bc304fc44afbf8592aafb518e985e30c9b58876cce545f4514c6c087` |
| 14 | `theorem` | [SupPrime.ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-ne-bot.md) | 108 | `result-track:810a97b308ecd05e3c369ecdcdeeef8de3217ce4736d6667418e30187e3c1c2e` |
| 15 | `theorem` | [SupIrred.finset_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred-finset-sup-eq.md) | 111 | `result-track:43f2c0572f3d1153e7edbbfb22308c7ad5f6caf7826ae767355806002479dd98` |
| 16 | `theorem` | [SupPrime.le_finset_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-le-finset-sup.md) | 121 | `result-track:68d7db4a5e55a40152fddff9a7625623a669d0e142e9e72f663177a80b7a5c5d` |
| 17 | `theorem` | [exists_supIrred_decomposition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/exists-supirred-decomposition.md) | 134 | `result-track:83417ba6e4bcfeb3c07b3fbb25e3f11f233d5a93309646cd0393c0c1445c57da` |
| 18 | `theorem` | [infIrred_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/infirred-todual.md) | 156 | `result-track:28d0e8e5df20d14ab280a9da0f0015cdf0d1f2d23954a1785468e8b4ac594d06` |
| 19 | `theorem` | [infPrime_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/infprime-todual.md) | 160 | `result-track:7bbb07855c71406a1be68a6b849898f4ba15c6bf1507f5e4a2ceb4afa0762fcb` |
| 20 | `theorem` | [supIrred_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred-ofdual.md) | 164 | `result-track:ac15f7b9f76bb880acb5aa9a1964f5b837cd678a9221612ddec12a09a3b86a5c` |
| 21 | `theorem` | [supPrime_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-ofdual.md) | 168 | `result-track:d0cb6f5ebe59447044671d5e74dd1bbb7823a158590ad822cddbef5b8939ab4e` |
| 22 | `theorem` | [supPrime_iff_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-iff-supirred.md) | 186 | `result-track:87ac84648098efc88680f1f47866f42aedb50e47250d33469ea70ef60fe5befe` |
| 23 | `theorem` | [supPrime_iff_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supprime-iff-not-ismin.md) | 199 | `result-track:24f3d2bc922e36257e5c0f2547aa33ceaf77ffffc78da25ad609acd6f75fe599` |
| 24 | `theorem` | [supIrred_iff_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreduciblePublic.lean/declarations/supirred-iff-not-ismin.md) | 203 | `result-track:f2981f4709e2c7a50fabf4496f5ab52ecef4f1a65c1e9cdde18fffcd320c30d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0734045d1800807e9ea6f6d74abfe569be3353785d2aa427a6bb966da6165c33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variant643a914ee646af7af08906cd4461e38c8b6b78f038711570ca3bc8170f2ff750.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Irreducible/Variant643a914ee646af7af08906cd4461e38c8b6b78f038711570ca3bc8170f2ff750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
