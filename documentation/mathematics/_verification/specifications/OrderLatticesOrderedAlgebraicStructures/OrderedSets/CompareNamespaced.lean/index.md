# Verification target: Compare Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a722b3b49802cdb31ca235b931b09f4abac92be",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a722b3b49802cdb31ca235b931b09f4abac92be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Ordering.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Synonym` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cmpLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmple.md) | 36 | `declaration-track:53982c42e40d25b097c21c4eab7b1dd786cedfabf723f2cd8d29a611e2d735fa` |
| 2 | `theorem` | [cmpLE_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmple-swap.md) | 39 | `result-track:f457cec327305e9a1b16575da4cee1252b7e537edca4245ae0ea1afd98f5155d` |
| 3 | `theorem` | [cmpLE_eq_cmp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmple-eq-cmp.md) | 44 | `result-track:7c6ad23ef5a998ee8f916b6df08837432ec48281189a312be47c7f830023d8e2` |
| 4 | `theorem` | [compares_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-swap.md) | 51 | `result-track:dbedfc3f2a3d3ff24fe113f37fb7fbe4da7f36fab5032bc7a1bfa0c1d0cf8cca` |
| 5 | `theorem` | [swap_eq_iff_eq_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/swap-eq-iff-eq-swap.md) | 59 | `result-track:c8544f57bf0ea1c9ee03b2875794d3ec2879a391a519a5426fe9e16d715b1da2` |
| 6 | `theorem` | [Compares.eq_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-eq-lt.md) | 62 | `result-track:4fdc64a209996941f8d5fa026ad23e8ce20b6e6ab6f68df4c69d183a900b4d54` |
| 7 | `theorem` | [Compares.ne_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-ne-lt.md) | 67 | `result-track:36e73c26a44c4a26ccbe26878aa232880a4ffcf7823f9695c9e5da9f259d5892` |
| 8 | `theorem` | [Compares.eq_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-eq-eq.md) | 72 | `result-track:aa017687390ba7f44f42a7f109c142483e897012a5c343b1a9cb9b9a3f2ec99d` |
| 9 | `theorem` | [Compares.eq_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-eq-gt.md) | 77 | `result-track:80120f060557975b2a40e08431d0f7a36a0b6e46a19f82cc2f8a92dabc1b17b2` |
| 10 | `theorem` | [Compares.ne_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-ne-gt.md) | 80 | `result-track:06e1b40e9c23d4717536c66aed3dabcae24f714ddfee1fa2bcb87752f75cdb12` |
| 11 | `theorem` | [Compares.le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-le-total.md) | 83 | `result-track:182c143306cab29d89a009ab60d271e7215e9e3183a1abf8573427c3013b34f6` |
| 12 | `theorem` | [Compares.le_antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-le-antisymm.md) | 88 | `result-track:586f11886edc75dc9633768b7ac67921f4210218edb139596b5e14398ded1651` |
| 13 | `theorem` | [Compares.inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-inj.md) | 93 | `result-track:efa870c53d57eca2b08f977a8cccbdbe128f788ddb197a0216d782cd479704b9` |
| 14 | `theorem` | [compares_iff_of_compares_impl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/compares-iff-of-compares-impl.md) | 99 | `result-track:10ef448e781bb65b5ad93a2c5406b238e7a6cf14e4a988223661d3b74360993a` |
| 15 | `theorem` | [toDual_compares_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/todual-compares-todual.md) | 115 | `result-track:871e50565a96faeaf4fd59243f9d33f10eb541ffdffff038c918781926515948` |
| 16 | `theorem` | [ofDual_compares_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/ofdual-compares-ofdual.md) | 121 | `result-track:b2edfbed44a442f864ce83cc05124c41b07dfc765b6592d5144cfc49bf8bb286` |
| 17 | `theorem` | [cmp_compares](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-compares.md) | 126 | `result-track:844ee33a1315c6db1ceba38ebfaa21f8f54082c5c2fb44d4c042cedb862d3f8c` |
| 18 | `theorem` | [Ordering.Compares.cmp_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/ordering-compares-cmp-eq.md) | 129 | `result-track:90e94201770237718f313fa4f11c5f95bfc57b73506f3a096a821e36e1043c75` |
| 19 | `theorem` | [cmp_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-swap.md) | 134 | `result-track:ab09df2c0fbe483be0e358b4239faa5ccad2e55812413f6edbd978c7a056ac44` |
| 20 | `theorem` | [cmpLE_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmple-todual.md) | 140 | `result-track:e936262d1abdf767d378469686a0692d483030ff74b696c48f03e68e99a967a3` |
| 21 | `theorem` | [cmpLE_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmple-ofdual.md) | 144 | `result-track:acb2e493e56cb72a020eaaab81052308a574919d6dc62f476fcedf6a47b69019` |
| 22 | `theorem` | [cmp_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-todual.md) | 148 | `result-track:65bf7b33ca8914176002e9a5e646e1cad173fc964bedfb0c86c260282fa58ed1` |
| 23 | `theorem` | [cmp_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-ofdual.md) | 152 | `result-track:eaaa3a5c61b3de3b8f7ea9db58dc3716f44ad0761e211b9b1cc1023255076e58` |
| 24 | `def` | [linearOrderOfCompares](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/linearorderofcompares.md) | 156 | `declaration-track:642243aef211f135232399bf7b64a2ab85291fb76c5f60ba185194f43cd724e5` |
| 25 | `theorem` | [cmp_eq_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-eq-lt-iff.md) | 171 | `result-track:4b3984e21744511f84802d973d6de52658804fd0067c3a1e41c01e106791e808` |
| 26 | `theorem` | [cmp_eq_eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-eq-eq-iff.md) | 175 | `result-track:d9c51fba2c23b9cd33e1138482c024718d8ce2732c696ca4bb85993c937e4fa9` |
| 27 | `theorem` | [cmp_eq_gt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-eq-gt-iff.md) | 179 | `result-track:c45b032e6f5b7264353bc979b136d173cf99b9b58821f1322f70d5567a3b4ac3` |
| 28 | `theorem` | [cmp_self_eq_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-self-eq-eq.md) | 183 | `result-track:9dc596a7bac6b7a52d8dc85e6e2706ea124cb16048d943a468c79c4f6a555734` |
| 29 | `theorem` | [cmp_eq_cmp_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/cmp-eq-cmp-symm.md) | 187 | `result-track:b8bbb51f67256e52a942689c5b72f41566a53c3aa2d255773327bd2203459a65` |
| 30 | `theorem` | [lt_iff_lt_of_cmp_eq_cmp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/lt-iff-lt-of-cmp-eq-cmp.md) | 191 | `result-track:7a041d6c05472bb65740fb3a225fd746e0b7c98fefd4cccaace6e238a2ab9694` |
| 31 | `theorem` | [le_iff_le_of_cmp_eq_cmp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/le-iff-le-of-cmp-eq-cmp.md) | 194 | `result-track:d65c1c722e6efa355db5b0ed29c7408f9462b7d4bebdc881f47889ee7615dc1e` |
| 32 | `theorem` | [eq_iff_eq_of_cmp_eq_cmp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/eq-iff-eq-of-cmp-eq-cmp.md) | 200 | `result-track:4bbd2d7900a52cec22beb2a0eefad87e533b461059c4099ac5131a50b74447b9` |
| 33 | `theorem` | [LT.lt.cmp_eq_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/lt-lt-cmp-eq-lt.md) | 204 | `result-track:82b70f1db6b7c2cad0e26097d24d78efec1af7f7c2fff0627f2ca383baf65cad` |
| 34 | `theorem` | [LT.lt.cmp_eq_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/lt-lt-cmp-eq-gt.md) | 207 | `result-track:3533891affe03502a107be6e315935aff069a1ba19467fc7be61e42805b76d54` |
| 35 | `theorem` | [Eq.cmp_eq_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/eq-cmp-eq-eq.md) | 210 | `result-track:86758f0383782dd52de41b8a38d4143518afa0d80e1529c75f27aedfe9f2c1df` |
| 36 | `theorem` | [Eq.cmp_eq_eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompareNamespaced.lean/declarations/eq-cmp-eq-eq-source-edition-2.md) | 213 | `result-track:89c368dfd1c2227fb1a125c7ce46caa1366e25b3fb609ec7ae3c354e9b34d1f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59f9a74fdc360d32d5f2eac276ffa37ea72cf7b9a071bd379d08b995e2f3e35e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Compare/Variantdbe67c6cb177d48c4bfc3d05b8d981cd7af796e89b5790b645f8bc4c37ba1600.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
