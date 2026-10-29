# Verification target: Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e328ccaea16723f48e8b9a84e309def9c13011cb",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e328ccaea16723f48e8b9a84e309def9c13011cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Closure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/isupperset-prod.md) | 39 | `result-track:3492582d35b2657adc63b55f9a882301887549281f3e6cee18c3bd78ec81da34` |
| 2 | `theorem` | [IsLowerSet.prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/islowerset-prod.md) | 42 | `result-track:e44da03bdf665aaff2d8f2c069dc085e473a5a597a4de3a1d9d4729084576c7f` |
| 3 | `def` | [prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod.md) | 52 | `declaration-track:d314d79fa34069e49646694361de6c93eeea04d6ff3b2ea45ee1dfc84ffe59af` |
| 4 | `instance` | [instSProd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/instsprod-source-edition-2.md) | 55 | `declaration-track:9c1692258b59b2ab904b42baaa6014ad127cb4b253e0c403451392fa448f078f` |
| 5 | `theorem` | [coe_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/coe-prod.md) | 59 | `result-track:88031040cea6842103a7e58d6178f96b16d8e2670ab7c0dd1f7b346d33e100fc` |
| 6 | `theorem` | [mem_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/mem-prod-source-edition-2.md) | 63 | `result-track:a6e2069b4c971ffac255adba5eeebd3e8eb2f684d73342768124bea1722a4547` |
| 7 | `theorem` | [Ici_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/ici-prod.md) | 66 | `result-track:7c8690ab33744d05ad5aee07ef6582d75e2a0a3404b88ab9b5f9ad89c66f23ac` |
| 8 | `theorem` | [Ici_prod_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/ici-prod-ici.md) | 70 | `result-track:c5dda6769d36be4005414fd9cf17f25b4ccdd90508f42deb8a6b404d8095460d` |
| 9 | `theorem` | [prod_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-top.md) | 74 | `result-track:3e7a115869cd8276f24ea66407a63cc745bfeecbaf124c04e382bf57078cd76b` |
| 10 | `theorem` | [top_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/top-prod.md) | 78 | `result-track:08300495acb20cd748bf1152a70c5c8db6bfcb1daa54a6c3f3774972be92dc31` |
| 11 | `theorem` | [bot_prod_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/bot-prod-bot.md) | 82 | `result-track:b0bc78d2315af65c78d9deca2b0edd3a0ca8f271ed3d2619acbdd137028fd256` |
| 12 | `theorem` | [sup_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/sup-prod-source-edition-2.md) | 86 | `result-track:c292f3b8679334af9d6a5e28830548ae1ac313383a2fcd3087df50af79fc17f5` |
| 13 | `theorem` | [prod_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-sup.md) | 90 | `result-track:7125d337cfc67a2853aff7737741042c657410ea6b77f3d06637b5ff903e6b24` |
| 14 | `theorem` | [inf_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/inf-prod-source-edition-2.md) | 94 | `result-track:dbf6fc42e3a501129f415b136a8f6230551613d0575f46d0f569ca5a9da3b53a` |
| 15 | `theorem` | [prod_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-inf.md) | 98 | `result-track:1fbd50befd4fff4c8578ecad5fd4e0d8e076b8adb3954a2637c8f4100132b140` |
| 16 | `theorem` | [prod_sup_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-sup-prod.md) | 101 | `result-track:4c34372ea3b4e492eef1420fcea058796102f924ca8a4292882db33e12e6f9d7` |
| 17 | `theorem` | [prod_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono-source-edition-2.md) | 107 | `result-track:e5ce18bf2cc0ed8ac7893613b1bbe73f0621fbb0a9980a9e556dd4e0af4d64c5` |
| 18 | `theorem` | [prod_mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono-left-source-edition-2.md) | 110 | `result-track:b772d2a164dcbb91c68152c5004bd6feb3dcd9ed0cef2dad39bba99f9cd198fd` |
| 19 | `theorem` | [prod_mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono-right-source-edition-2.md) | 113 | `result-track:a494f625a6b88ccfc6338c3cf706024a3d8ba7242e1ef1635247f7e38cbde85c` |
| 20 | `theorem` | [prod_self_le_prod_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-self-le-prod-self-source-edition-2.md) | 117 | `result-track:92981e30e5aca0322e188c8ee5f7585a930a27de666ea9bb3b16a97d08ea460e` |
| 21 | `theorem` | [prod_self_lt_prod_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-self-lt-prod-self.md) | 121 | `result-track:6ec8a9754e27d16fc90fdfe5b06feabb687fed8f3d45a2d1c0f657f2bdd55235` |
| 22 | `theorem` | [prod_le_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-le-prod-iff-source-edition-2.md) | 124 | `result-track:c4839c9346729971ddcf4f63cfa08a534e502d0611097e0e6d33822fc9acd534` |
| 23 | `theorem` | [prod_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-eq-top.md) | 128 | `result-track:981ea92c46c018b6adf08f76f56ea2c84485edcb88709623634270fea355d014` |
| 24 | `theorem` | [codisjoint_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/codisjoint-prod.md) | 133 | `result-track:28cb781661adc3e217c786eb0b2c785202b662f6b5813a7254c8d7d77fb6782a` |
| 25 | `def` | [prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-source-edition-2.md) | 144 | `declaration-track:e0fd10b61b95ca282e8a764250c407c0cc5cdd54a24d2fb239167cd5f8deff67` |
| 26 | `instance` | [instSProd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/instsprod.md) | 146 | `declaration-track:62f6492a3755dfa1fe90225b2eeb882ba0eb8a39e701ce95a2a0af3e5aae7156` |
| 27 | `theorem` | [coe_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/coe-prod-source-edition-2.md) | 150 | `result-track:f604621f498af7f4d4f4aeeab2b7021855a79e38167c02764d9bd57ccc07ac91` |
| 28 | `theorem` | [mem_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/mem-prod.md) | 153 | `result-track:5ad81bfdec0a8afe85cc6ea63eff06ccf1e89341654f9812eac74331a3afb704` |
| 29 | `theorem` | [Iic_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/iic-prod.md) | 156 | `result-track:38eea0f672b2287f745117d18d2c6411fd5c5b14050bf8e609d38464662dbb96` |
| 30 | `theorem` | [Ici_prod_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/ici-prod-ici-source-edition-2.md) | 160 | `result-track:e43421ff18edda55d36d481663e14e1b27f98a80761f601e04ff9609d39acfd2` |
| 31 | `theorem` | [prod_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-bot.md) | 164 | `result-track:923b2c92f745a99539086152669b3ab8b884b9f18113d9ae358114b8ab9af52d` |
| 32 | `theorem` | [bot_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/bot-prod.md) | 168 | `result-track:2ae35ecaefc49b8195721586491133af0b885643a42788820eab1daddc18b221` |
| 33 | `theorem` | [top_prod_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/top-prod-top.md) | 172 | `result-track:9ca4fdd94ec1741417725633c7f345f79965c52d5dc00921e3873eaa57d1b31b` |
| 34 | `theorem` | [inf_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/inf-prod.md) | 176 | `result-track:af23e4c0b47d41b2e1988a9ab9c1603f63e189b76d99a84db0c0f04a30ded324` |
| 35 | `theorem` | [prod_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-inf-source-edition-2.md) | 180 | `result-track:d3fb20c80066e057319359ae0289ff4be65a7ec715c471d63f06dbd35a024893` |
| 36 | `theorem` | [sup_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/sup-prod.md) | 184 | `result-track:5c9402e4c5c7644ca2c5525cce1d19fad1c5fe55784cf6112d99518cff0957ac` |
| 37 | `theorem` | [prod_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-sup-source-edition-2.md) | 188 | `result-track:ef5b3094523b0a09c83ce6bbf049ffab0f2a1db30970bc9423fe3ab2aaff49bb` |
| 38 | `theorem` | [prod_inf_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-inf-prod.md) | 191 | `result-track:8c583996fb8007ebd1c4a13bfb36d3554ebe641aa392334aa5e3ccaac7b4224f` |
| 39 | `theorem` | [prod_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono.md) | 196 | `result-track:dd89fb85314c13a9aca2152f34549d989b4914772589a316c027bd7f3ae233eb` |
| 40 | `theorem` | [prod_mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono-left.md) | 198 | `result-track:64a2551905109902ec1463dbbe11f293aa83efdbc3054c25a922a5eb25b83ec3` |
| 41 | `theorem` | [prod_mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-mono-right.md) | 200 | `result-track:87ded3b124274ec8e41cfec01e246ca646b852d1181abd067ff92eb8deed70f6` |
| 42 | `theorem` | [prod_self_le_prod_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-self-le-prod-self.md) | 203 | `result-track:0c0758298f17ee6b17a109a1d0d7c7ec5539ed9dc02149d735a50d4dd786be59` |
| 43 | `theorem` | [prod_self_lt_prod_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-self-lt-prod-self-source-edition-2.md) | 207 | `result-track:9207dfe4d0def420afe1b13cf6a94abb79301e285af6cd33629a8303f6ca4cff` |
| 44 | `theorem` | [prod_le_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-le-prod-iff.md) | 210 | `result-track:a1ea035ec3ffae706576669148c890bfb8cef00e4c396b073d6817dfb0e239fd` |
| 45 | `theorem` | [prod_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/prod-eq-bot.md) | 214 | `result-track:017738c868c4ee1e08c07da4158fc0ff4d2bbe1994fd9d2fd43cf5389eb5c1d8` |
| 46 | `theorem` | [disjoint_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/disjoint-prod.md) | 219 | `result-track:89d8982b26eb7f7246b3462cf832b4292d0aae2c7bf632f57945a13a720e62e6` |
| 47 | `theorem` | [upperClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/upperclosure-prod.md) | 225 | `result-track:61e60d482e508bffa7bdf8614197cb9be03264f84a3bf3356234a70dd51f1b94` |
| 48 | `theorem` | [lowerClosure_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ProdNamespaced.lean/declarations/lowerclosure-prod.md) | 231 | `result-track:e9eed13f6d4838b4d21210a0b7aa9f064962fd5654dbf509fa1ff3101e58e1cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0845f70d9af85e6349cb61fdefab8b1ea93a0d4c52b8a7bcf3b39acc8f8d4b70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Prod/Variant2682b27d97197e24990b1fe55825e0d9aacd33f298d3808162b9e3ecdeb465ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
