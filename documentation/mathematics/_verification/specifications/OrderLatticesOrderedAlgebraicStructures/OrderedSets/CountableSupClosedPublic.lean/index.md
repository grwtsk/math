# Verification target: Countable Sup Closed Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a45dd6b280ea039ae5b4a66b87f60f2598302e4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a45dd6b280ea039ae5b4a66b87f60f2598302e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CountableSupClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed.md) | 44 | `declaration-track:e0a86ad0ad0f6c8068f197d023e463ead16bdd04925081d1149ec594251394d9` |
| 2 | `structure` | [CountableInfClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countableinfclosed.md) | 50 | `declaration-track:3c7beb144613a9dfc8a410fa587c348d163967b59a2173a8d3845c32a20d39e9` |
| 3 | `lemma` | [CountableSupClosed.iSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-isup-mem.md) | 54 | `result-track:d8930ec174b007e193daee70e60ae2d928b55596763e051825a99d9ee0963d74` |
| 4 | `lemma` | [CountableSupClosed.of_iSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-of-isup-mem.md) | 62 | `result-track:306167e754b41cc941d2233407c79b2917fad98e7566550acea76bc704f8fbea` |
| 5 | `lemma` | [CountableSupClosed.sSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-ssup-mem.md) | 71 | `result-track:fd837b006ad2aff12d76d4b4eece7b0e6afbb8e499ae5ffaa1e77a51aae27d42` |
| 6 | `lemma` | [CountableSupClosed.supClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-supclosed.md) | 80 | `result-track:60e9ab335875324e8242e176ab7b8f04ed19b9f77e2da44304d20f47dd0bdb38` |
| 7 | `lemma` | [CountableSupClosed.singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-singleton.md) | 84 | `result-track:56fff317803901158d9f28cdb4d726dbc614b973f525d37c586e521d6f8164ca` |
| 8 | `lemma` | [CountableSupClosed.univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-univ.md) | 98 | `result-track:03e03d2641b9335216c4f77dec47105d8c879d830b76996c5ae193a456b966ac` |
| 9 | `lemma` | [CountableSupClosed.empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-empty.md) | 103 | `result-track:ccdf6dc77a2dcd3138f0da69cae41b74fd18b3c7d9f6e7e197627764c94407a2` |
| 10 | `lemma` | [CountableSupClosed.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-inter.md) | 108 | `result-track:787e7571e8717ad5038d83490748c2d9c1bfc426794226842ecb0fde1ed15923` |
| 11 | `lemma` | [CountableSupClosed.sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-sinter.md) | 116 | `result-track:0582ab82f1c3722ace20088d6b4c0730ccc4d55d2af489bb63e63505f3a082c4` |
| 12 | `lemma` | [CountableSupClosed.iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-iinter.md) | 123 | `result-track:a19177f830d22f6bf52ba17d8afaf1382fdf345c541c757ef5c56daee2a82f56` |
| 13 | `lemma` | [CountableSupClosed.directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-directedon.md) | 129 | `result-track:50fbb8e9a03528dc6373c4897e2d527939cec507e6f569806ce20cdbb42ee37d` |
| 14 | `lemma` | [CountableSupClosed.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-prod.md) | 133 | `result-track:565876f0a4d512ad3461242491d07a60cd64e60b81044f9d46d1a184f62483bc` |
| 15 | `lemma` | [CountableSupClosed.finsetSup'_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-finsetsup-mem.md) | 148 | `result-track:df49c9875c17a6b035f0363c9c951244faa36a342903e3da3e754e8972bcfc35` |
| 16 | `lemma` | [CountableSupClosed.finsetSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-finsetsup-mem-source-edition-2.md) | 154 | `result-track:ed4989e46d21626ac42052801f3088c9a06c43bda09f5b82a1a20a0fd43865b6` |
| 17 | `lemma` | [countableSupClosed_preimage_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-preimage-todual.md) | 163 | `result-track:6fab34370505ace523548a201be833291283dfdde04d8fd28badc45b36eb9860` |
| 18 | `lemma` | [countableSupClosed_preimage_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-preimage-ofdual.md) | 167 | `result-track:9dec225e0bc5cbf533f37374de41101015cce637cbb54a12427ce4bae885c8bb` |
| 19 | `def` | [countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure.md) | 181 | `declaration-track:6547bba77a274a26bd55d4a3aac1ebb6691d261478b4eb0e132ce8e8905d555e` |
| 20 | `lemma` | [subset_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/subset-countablesupclosure.md) | 201 | `result-track:55139a4cb5c036168fa5857898727c6886aef5968cc90d88f32661b2b6993099` |
| 21 | `lemma` | [countableSupClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-min.md) | 205 | `result-track:db9526cb47820d044e01cd8767eb9690ec858440caeee15e3418920c196d7cd6` |
| 22 | `lemma` | [countableSupClosed_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosed-countablesupclosure.md) | 208 | `result-track:a655a858edfe3e942c80d8b3df380fe228dfa766a49642319a0e88dfd9fc7cae` |
| 23 | `lemma` | [countableSupClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-mono.md) | 212 | `result-track:997dbf21d6d0d788eaa4a29b02b8b977a35aa623de527022bebca0c1395cd305` |
| 24 | `lemma` | [countableSupClosure_eq_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-eq-self.md) | 215 | `result-track:00c1b7ec0d76c7a2329a11e75bcde1b46819dd4221aa08cd270be6518fa420d6` |
| 25 | `lemma` | [countableSupClosure_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-idem.md) | 222 | `result-track:2cfa05cc24497b7267558605058a8afeb7a9540e6eaae2403e030191c8153cbe` |
| 26 | `lemma` | [countableSupClosure_eq_sInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-eq-sinter.md) | 227 | `result-track:4b80f00876eac6cc417b2a6d72b5b5cd74323c6f6013e25c011dbcbf06cb12f9` |
| 27 | `lemma` | [mem_countableSupClosure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/mem-countablesupclosure-iff.md) | 238 | `result-track:d9ad192c6dae5ff62369cad622e578dc9991906aff8af02151a08e7534c938bb` |
| 28 | `lemma` | [countableSupClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-univ.md) | 242 | `result-track:187988fc4be4781d552c40b6c7613285b74347f005703aec75cf079df245b6be` |
| 29 | `lemma` | [countableSupClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-empty.md) | 245 | `result-track:0ddeef67e1a2f9fb8172dce8e76a2103e70b79e0635823ea1879dc6de2a34ac0` |
| 30 | `lemma` | [upperBounds_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/upperbounds-countablesupclosure.md) | 248 | `result-track:64cd091e0701bfb55d850ee16ebd49742684f93995e3af8eb0015a965db7b639` |
| 31 | `lemma` | [isLUB_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/islub-countablesupclosure.md) | 257 | `result-track:65b6bda6b441f36872b34cafdc8c2e2ffd47de41b6650e22708afc91591c9288` |
| 32 | `lemma` | [countableSupClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-prod.md) | 260 | `result-track:15ae00f9863714eb13dd494e527032d56d6b7396c8bd075ef9d2d82b6749838c` |
| 33 | `lemma` | [mem_countableSupClosure_iff_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/mem-countablesupclosure-iff-isup.md) | 276 | `result-track:ce016c810ad614acf248beaea13236720c63a94e9211122b6e1100bca6f0ab36` |
| 34 | `lemma` | [supClosed_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/supclosed-countablesupclosure.md) | 289 | `result-track:56b1846e2c6a89f4803eabfc317c96ba8ae043686fca280f0d9f44ef114fc8d8` |
| 35 | `lemma` | [countableSupClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/countablesupclosure-singleton.md) | 293 | `result-track:fbaba5ba940c5a03989a488100281e299a980277b6cfe8f9f259570408451ab3` |
| 36 | `lemma` | [sup_mem_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/sup-mem-countablesupclosure.md) | 297 | `result-track:0eca877387094e25674dfbf04deb7cc832af82176ddb428902c429648b1537dc` |
| 37 | `lemma` | [iSup_mem_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/isup-mem-countablesupclosure.md) | 302 | `result-track:0feed9d1fdae74a8943a27e3be53fa97fa7fe6d55ba59e9cd06cb96a3ff9769b` |
| 38 | `lemma` | [finsetSup'_mem_countableSupClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/finsetsup-mem-countablesupclosure.md) | 308 | `result-track:a375b4488cf67374ea16e1c4b9bcf359350cfc690f39af9bb6e3577521034754` |
| 39 | `lemma` | [SupClosed.countableInfClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CountableSupClosedPublic.lean/declarations/supclosed-countableinfclosure.md) | 318 | `result-track:ef8ec23e6924d815a0bee8f96c43c94e801493701c89ccf1ffd135ac90535806` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0566f701436692f44e73048f3a4139719b7d37e1650d23ae1d8bfab9f6ae4fcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CountableSupClosed/Variant4f6c17e638a7f1c2cdad2656703b321f40be3cc1a4b551f5fe6abb95ac1e079e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
