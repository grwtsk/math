# Verification target: Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4dfa304641f5612d334846c467abe38ac68521e",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4dfa304641f5612d334846c467abe38ac68521e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean.json)

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
| 1 | `lemma` | [hasProd_le_of_prod_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-le-of-prod-le.md) | 39 | `result-track:3ca9bc5855808b45dd5700ddb5f8c2117ebe14a1cae00c341dbd1095ff8db5f9` |
| 2 | `theorem` | [le_hasProd_of_le_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/le-hasprod-of-le-prod.md) | 44 | `result-track:b4d4ec769e440f60706118fefd7a7e639ae5f2b58e2766aaddde88ab3c389cff` |
| 3 | `theorem` | [Multipliable.tprod_le_of_prod_range_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-le-of-prod-range-le.md) | 49 | `result-track:462ccfee0da2e5d45bf2aa8a215b2433bd9c6bc8c2005d07f9b424acbea8c9b8` |
| 4 | `theorem` | [hasProd_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-le.md) | 62 | `result-track:fd17c9e0678769569aa4f7bbe5d33629cf26dabf13c4ce8d48a559121eab9a4c` |
| 5 | `theorem` | [hasProd_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-mono.md) | 67 | `result-track:776f539e67cfbf1f147256b98104bde6203a5a342a2e6d069810ca0a8f0e2e58` |
| 6 | `theorem` | [hasProd_le_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-le-inj.md) | 71 | `result-track:202eb58a9d3e62dc880e2037a65adbbe0567f12572aa3f74d0beb101114fc2ef` |
| 7 | `theorem` | [Multipliable.tprod_le_tprod_of_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-le-tprod-of-inj.md) | 83 | `result-track:9853cdbd2cf3eb54bd7d667c71ab82c056aedf9c6ce3df6b0319e6f0dc403eaf` |
| 8 | `lemma` | [Multipliable.tprod_subtype_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-subtype-le.md) | 89 | `result-track:7649b6142dc9de6c482a1a225e820d1215dd213b82712a14f44b89c1f7883914` |
| 9 | `theorem` | [prod_le_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/prod-le-hasprod.md) | 101 | `result-track:fcfaf356f3dc0f790a7fc6a3ec9c7b3e10b9ed6997afc89855d95e096b355132` |
| 10 | `theorem` | [isLUB_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/islub-hasprod-source-edition-2.md) | 107 | `result-track:f5f48212b03c334183addf88783d569b92952fe91cbac998cb01b9e81d24e716` |
| 11 | `theorem` | [le_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/le-hasprod.md) | 112 | `result-track:0c0308590ce84aeda3aef22ad0cb32758a13bf21644e1698e14190caba822c91` |
| 12 | `theorem` | [lt_hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/lt-hasprod.md) | 119 | `result-track:45305a2dac0e9b1e3fd36c73fe651dc7b2968a27cba7276cb7ee64773ff7a17f` |
| 13 | `theorem` | [Multipliable.prod_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-prod-le-tprod.md) | 129 | `result-track:72c00be07b57b025925f95c0f2ab782e0c08958034fc7b42f4159d916615a24f` |
| 14 | `theorem` | [Multipliable.le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-le-tprod.md) | 135 | `result-track:0b2f32d07bb692cc7a171ae96cd7543f5faf9daa65a3f54619ca3cf9a1b56feb` |
| 15 | `theorem` | [Multipliable.tprod_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-le-tprod.md) | 140 | `result-track:2ca13a8db97d345f59a3f18adfeaae9c09ba47b3bf261fa00e64cc7ec815e586` |
| 16 | `theorem` | [Multipliable.tprod_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-mono.md) | 145 | `result-track:3f6ba847558f4215457069e5e3f25d2b4e9a186efedae7ff324a32cb1ac7912c` |
| 17 | `theorem` | [Multipliable.tprod_le_of_prod_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-le-of-prod-le.md) | 151 | `result-track:7ea78461325a7f6bca9c97f4d891608a3f15c58422261af05c465178b42df777` |
| 18 | `theorem` | [tprod_le_of_prod_le'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/tprod-le-of-prod-le.md) | 157 | `result-track:c40414e4ff6d5d720b8c60bde2b4971407f19853adaab82ec53361fb5c2b939e` |
| 19 | `theorem` | [HasProd.one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-one-le.md) | 168 | `result-track:155157a0ae6a5c1012cda83e7aa5aeb02bfdc6bf1b46a88ead3e792452a03ba4` |
| 20 | `theorem` | [HasProd.le_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-le-one.md) | 172 | `result-track:12c55ee9481994e702bb49186392ed4adc5ac4597563728a3b2244e38a064049` |
| 21 | `theorem` | [one_le_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/one-le-tprod.md) | 176 | `result-track:22ac688f2722af1b6d542f48b0ea9760778c3f02d69d016a4b51a85fb18119a6` |
| 22 | `theorem` | [tprod_le_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/tprod-le-one.md) | 184 | `result-track:f34e932fbd2d6d2460bcde03765e0d998992cc0115364a57a88657d8c5ce2a00` |
| 23 | `theorem` | [hasProd_one_iff_of_one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-one-iff-of-one-le.md) | 193 | `result-track:adf589655dca827b553d658ca0951e3afd924378ef2db48a1afaee9baf580620` |
| 24 | `theorem` | [hasProd_lt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-lt.md) | 212 | `result-track:04d64a0f03eee094561bde470c4c40551211d226555b7ea35d5ef1dc64a1f9e9` |
| 25 | `theorem` | [hasProd_strict_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-strict-mono.md) | 220 | `result-track:35ad00c20aeea34a099cf89895ff2c3afee8e6f96bf908224e3982c614ed9d4d` |
| 26 | `theorem` | [Multipliable.tprod_lt_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-lt-tprod.md) | 225 | `result-track:a607d3ea395d8a0660237ce4654e1ffb599959522974887f02dbd2dd595bc346` |
| 27 | `theorem` | [Multipliable.tprod_strict_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-strict-mono.md) | 231 | `result-track:fee1dad1ebb67b33cf04d7ff4b17571c27bcf7efe33caa2a5fda5152c63d30b3` |
| 28 | `theorem` | [Multipliable.one_lt_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-one-lt-tprod.md) | 238 | `result-track:a1a6c694cfa6ed632a6b6e26b1942c7cb36e24af77ef8123725e0f5e17e4b0cc` |
| 29 | `theorem` | [HasProd.nonneg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-nonneg.md) | 250 | `result-track:80be13074eac3660dd79a94bd89ed7b7cc511b7bf54fea4df8f6590c7a6d997b` |
| 30 | `theorem` | [tprod_nonneg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/tprod-nonneg.md) | 254 | `result-track:e5a5653a77c13ec123c941e9a83668472d7147b2ac014c8e2fcb8ac6870c05bb` |
| 31 | `theorem` | [prod_le_hasProd_of_nonneg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/prod-le-hasprod-of-nonneg.md) | 262 | `result-track:52cfda80323ed4cc1039987731bc3edae6db14439041b6466f299776da7e8bce` |
| 32 | `theorem` | [Multipliable.prod_le_tprod_of_nonneg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-prod-le-tprod-of-nonneg.md) | 268 | `result-track:2ada726fbdd83bd00f3c6e65c367569380045818ded7422a232d6c81837bbf8a` |
| 33 | `theorem` | [le_hasProd'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/le-hasprod-source-edition-2.md) | 282 | `result-track:72d409d77347ee8c9c74e8486a5e661435927b249ca64dc2348d0e99042a18bc` |
| 34 | `theorem` | [Multipliable.le_tprod'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-le-tprod-source-edition-2.md) | 286 | `result-track:3b7cfaae1d288d51f31789a39ce300fad650ba0248a90cfe3f0440acdfea543a` |
| 35 | `theorem` | [hasProd_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-one-iff.md) | 290 | `result-track:1d9af334fe7a1de4e4872f0d96f20c5ca561e3ac01dee6be543890a5ca63d834` |
| 36 | `theorem` | [Multipliable.tprod_eq_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-eq-one-iff.md) | 294 | `result-track:044d1de1adb13d14514e9afb5db0090cde6069f969964b09a723e4f13630b03d` |
| 37 | `theorem` | [Multipliable.tprod_ne_one_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-tprod-ne-one-iff.md) | 299 | `result-track:33ae4278a0b3b329fc42b79010104c765a183329d494f6b420c1480f15441256` |
| 38 | `theorem` | [isLUB_hasProd'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/islub-hasprod.md) | 305 | `result-track:e713388646d47a0fdb58af6eded78ebf0c12732fbb7afc9d368a095a192bdc17` |
| 39 | `theorem` | [hasProd_of_isLUB_of_one_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-of-islub-of-one-le.md) | 322 | `result-track:3425bcdaada12bdcc56dbf0cde89ac2af4b0b3040f497b0c9e86dd7aa3f63d98` |
| 40 | `theorem` | [hasProd_of_isGLB_of_le_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-of-isglb-of-le-one.md) | 329 | `result-track:849cac558dffc9c17424548fa4e204f33142f7832bd2a66b0cd35f240165081a` |
| 41 | `theorem` | [hasProd_of_isLUB](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-of-islub.md) | 336 | `result-track:37757bec70ec173716a89aec8be765410bdc6cd4512321080d8be25b761eb76b` |
| 42 | `theorem` | [multipliable_mabs_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-mabs-iff.md) | 343 | `result-track:1b9998940ccf3b2bd3ec02308eb3998bfa88f83351f6beb0c3c187fc01b7e93d` |
| 43 | `theorem` | [Finite.of_summable_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/finite-of-summable-const.md) | 357 | `result-track:5f73a932ee2286aa0c9017de51222621d3f872bca3f23664de335bf5baa12872` |
| 44 | `theorem` | [Set.Finite.of_summable_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/set-finite-of-summable-const.md) | 369 | `result-track:f41f4811a395df3e50e17abad78a5432a01f4dfd72b9102babaaae2f28d917c9` |
| 45 | `theorem` | [HasProd.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/hasprod-abs.md) | 382 | `result-track:7ad290c8c287004d379f2990576b7d892ff290eda14dae383d1643f6cd568336` |
| 46 | `theorem` | [Multipliable.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-abs.md) | 385 | `result-track:d5ac81d11b5d2dde1065588ae8a61391000a2e51473417da1aa2c044e6a72c0b` |
| 47 | `theorem` | [Multipliable.abs_tprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/multipliable-abs-tprod.md) | 388 | `result-track:c8b0ec56fca8200aa11f1f04fe751e56e98a0d2186ac0ce33fc3d398714fc211` |
| 48 | `theorem` | [Summable.tendsto_atTop_of_pos](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/summable-tendsto-attop-of-pos.md) | 393 | `result-track:f576bf975332ca56e44143497fed8316461267197b26644a9d99cb05e7244034` |
| 49 | `def` | [evalTsum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderNamespacedPublic.lean/declarations/evaltsum.md) | 410 | `declaration-track:04fe4a9a55ba549a0948fd0f24612fda22dab6ca0f0795d9e6ebc5ad9ca5b00d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=831f80d5d01bdead4235e7f7611a336c72ac9995fbf577b65194f71f77d61e61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Order/Variante508d58f8018e7faf0c1fd709c8f024ce356b6a10037d7e236c0979c2c683335.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
