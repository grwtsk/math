# Verification target: Irreducible Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bae312273ebf8070c287b85f9cc994dffb74877b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bae312273ebf8070c287b85f9cc994dffb74877b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred.md) | 53 | `declaration-track:a54a9e609b0f27750c8db33de3718eb9daf0d9f0024921765d5e0dcdab8ea113` |
| 2 | `def` | [SupPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime.md) | 58 | `declaration-track:5cafae1bb0d445609b92e100d8eb6bdb1025732a533332c441f3bf34c1b1f3f9` |
| 3 | `theorem` | [SupIrred.not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-not-ismin.md) | 61 | `result-track:c4bbcdf6e62968cf5777e4a9ba96f70c54711ee3c9e6809a066c3b50398437dd` |
| 4 | `theorem` | [SupPrime.not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-not-ismin.md) | 64 | `result-track:d9b2c31aa195681e6cc2bd21d9efa9e7652cf117cf93563bf829fa14dfb97e1e` |
| 5 | `theorem` | [IsMin.not_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/ismin-not-supirred.md) | 67 | `result-track:614ba537ab0f6b0e15724319300a141ee9b1b3c4718e7d36c8b3405a9064a4c0` |
| 6 | `theorem` | [IsMin.not_supPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/ismin-not-supprime.md) | 69 | `result-track:97f4e7bb9a6f6a98ac2eb401e4c4b49d4af1081b89544bfc074e84260314aead` |
| 7 | `theorem` | [not_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-supirred.md) | 72 | `result-track:33a17bd5d80995dbf435cbab508236bd4bf14a73fb581b2189c126b3a709afc0` |
| 8 | `theorem` | [not_supPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-supprime.md) | 79 | `result-track:d3a277649c0f5e4fa11712eca1a34fafbdf34c076998bcdf0c7191e207a3310b` |
| 9 | `theorem` | [SupPrime.supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-supirred.md) | 82 | `result-track:bb1de5d64970722460f9c637fb44675a701c648a093986610e0c347691104aa8` |
| 10 | `theorem` | [SupPrime.le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-le-sup.md) | 85 | `result-track:e5847406e88ddd71338d7f19453f8934dc74b86da837a33fc0f18924d3344b25` |
| 11 | `theorem` | [not_supIrred_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-supirred-bot.md) | 91 | `result-track:44150bcc3da28b3780b6ceba743c5e1c4fc3e7ed19dcc6d6133ea3918f675c96` |
| 12 | `theorem` | [not_supPrime_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-supprime-bot.md) | 95 | `result-track:da365f9e056cb9e174c55aa9be7eedc03dea54c52d95e65b09bcc727b2d00a9f` |
| 13 | `theorem` | [SupIrred.ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-ne-bot.md) | 98 | `result-track:719f812dfd0dd8e72ce2056601d0869655a69b116bb7b9d27b21e1c62bf68c29` |
| 14 | `theorem` | [SupPrime.ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-ne-bot.md) | 100 | `result-track:ca3c7f30daf1833e65ae9f44a80711efa52be6878418ccde43e7af04a4e0294a` |
| 15 | `theorem` | [SupIrred.finset_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-finset-sup-eq.md) | 102 | `result-track:6d842f1850db2a6bb2a3d2d5a1ba6a41d9255a68c16f913cd63430384722410a` |
| 16 | `theorem` | [SupPrime.le_finset_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-le-finset-sup.md) | 111 | `result-track:154df52d9bfc74a65925b98dca1fa3c52adf867dcf150ea45dfc774b7ba4bc63` |
| 17 | `theorem` | [exists_supIrred_decomposition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/exists-supirred-decomposition.md) | 121 | `result-track:f2388c8501ffeeee67220fc3a081ecc7c2fe1567f0081ef74b1a458269aa2147` |
| 18 | `def` | [InfIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred.md) | 143 | `declaration-track:5dd06c5b6ed8a6d262881bfac93e1b7fb6607a982677472553dcef55be94f0b9` |
| 19 | `def` | [InfPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime.md) | 148 | `declaration-track:d4897706b0e154b4afe7a9a4b2bc25fb76c2e6ab3ee1839a0d9d2c78eb97f3a4` |
| 20 | `theorem` | [IsMax.not_infIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/ismax-not-infirred.md) | 152 | `result-track:ae943092bfae8ae03814e1e47ec95a3fcd6b69064005dd7b0c54990efb7970fb` |
| 21 | `theorem` | [IsMax.not_infPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/ismax-not-infprime.md) | 155 | `result-track:0062488e1fe8474b9fb36eea2b516247e99bb3f2422f7e1853685361fcc5797c` |
| 22 | `theorem` | [not_infIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-infirred.md) | 158 | `result-track:da3e225228811e3df403c080f6907b6f92a89974347272cdf78244a38050e78a` |
| 23 | `theorem` | [not_infPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-infprime.md) | 162 | `result-track:36e560a79f4369acf2445da26104d8a53033b16a65b2fbf190b8cec303104c54` |
| 24 | `theorem` | [InfPrime.infIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-infirred.md) | 165 | `result-track:612bbc61abc96f09786b0b4c43ce8d0ae7ce4557231665b5734f61ebe0fe0b0b` |
| 25 | `theorem` | [InfPrime.inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-inf-le.md) | 168 | `result-track:1b1b6e0d3b608699394f60b0ca3cb8f7757e1dab5a62f8751e9c7f7ee50a0c45` |
| 26 | `theorem` | [not_infIrred_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-infirred-top.md) | 173 | `result-track:913809c1cf4cd7c143cd1f66da0a78f3c06aa710c4582da0ae69a8ca7ffc3641` |
| 27 | `theorem` | [not_infPrime_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/not-infprime-top.md) | 176 | `result-track:2a3ea7db953c44892c4fc080aa64bb950c19cc855536d85731ad5597edef43c1` |
| 28 | `theorem` | [InfIrred.ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred-ne-top.md) | 179 | `result-track:91f8afc596e8584d9a596562c5f4a97d71455eed92994ae8191bd7bf2b1f735c` |
| 29 | `theorem` | [InfPrime.ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-ne-top.md) | 181 | `result-track:1dd55da05c70e9f8d80319c326781d02a0e7fdb0d6b1a98d86328cec71495f27` |
| 30 | `theorem` | [InfIrred.finset_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred-finset-inf-eq.md) | 183 | `result-track:8554edacebe0dab74610b55b7e5ce96431c186af7374f6a5cbf7faeb7950ecac` |
| 31 | `theorem` | [InfPrime.finset_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-finset-inf-le.md) | 186 | `result-track:9da3d0168ef63bb42a57ab6d60b604fdb3e99e88ed2bf7e051dec309f78ea6a2` |
| 32 | `theorem` | [exists_infIrred_decomposition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/exists-infirred-decomposition.md) | 193 | `result-track:1aafe546b230c1b8384e10c5fcf677cf33a1f8beb4a5e8fefd8afdb8c35afe94` |
| 33 | `theorem` | [infIrred_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred-todual.md) | 204 | `result-track:3cba4a00c750c69bf23290258b4cafaf9718bef7bb9cd8da41a6b094f77cc782` |
| 34 | `theorem` | [infPrime_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-todual.md) | 208 | `result-track:ba12e830dd05c9196bec1f3ab982d46f653c1111f4e9841b91a2600b63acafa4` |
| 35 | `theorem` | [supIrred_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-ofdual.md) | 212 | `result-track:66ae4ecf855da43c475802b1503fcbb3881628032c97b64df411606a96f5151a` |
| 36 | `theorem` | [supPrime_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-ofdual.md) | 216 | `result-track:cce03754a4547dfcb9177da349f24b4dada272e14fba5538aa70952439958384` |
| 37 | `theorem` | [supIrred_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-todual.md) | 234 | `result-track:a31c208510f631d2724805ea4e46d82a843eac30e4c218808fbc615886f773f6` |
| 38 | `theorem` | [supPrime_toDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-todual.md) | 238 | `result-track:78e2ae65e29d90f994e175003dd30e3c1383f7cf3c3f6381f805c5529faa1a30` |
| 39 | `theorem` | [infIrred_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred-ofdual.md) | 242 | `result-track:7956dfcec2b06946b98dbb3540105d8c10f7fd78a407647c0f6752c9ab4d7637` |
| 40 | `theorem` | [infPrime_ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-ofdual.md) | 246 | `result-track:fe7473508f0adeb4eb41b2729ac5b8a89beb4cff059fbb856038043cad9299bd` |
| 41 | `theorem` | [supPrime_iff_supIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-iff-supirred.md) | 264 | `result-track:f08a87ec1d61a3da87e3d6c3acb043d1d9557a852bad8a44950ded878f1bedee` |
| 42 | `theorem` | [infPrime_iff_infIrred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-iff-infirred.md) | 269 | `result-track:918c794aeca824b52faa39832f79a61c3ad1311dcfa883b38797ebb1e3b07aab` |
| 43 | `theorem` | [supPrime_iff_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supprime-iff-not-ismin.md) | 282 | `result-track:b53bcbf7999ab93c87aa6a7cb8c184d9a4393354afb501d604008a39aec27d0e` |
| 44 | `theorem` | [infPrime_iff_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infprime-iff-not-ismax.md) | 285 | `result-track:83cac0948294817b90d5694564a564f131716cc0134ef1b9bbe92a32d3c20c33` |
| 45 | `theorem` | [supIrred_iff_not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/supirred-iff-not-ismin.md) | 289 | `result-track:3ae909e4f4783f2073c596ed35702b4ad6a5ad2f4516df8efd7e1f9792b10396` |
| 46 | `theorem` | [infIrred_iff_not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/IrreducibleNamespaced.lean/declarations/infirred-iff-not-ismax.md) | 293 | `result-track:aa80a1708ead3ea5fbcf5da97336e830baad00cf2fda49ec553b97092d8f4361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=833f3f47f46df276af403b61bdbbba0c6a7343047d5f6b5fcdeb90322fe92c41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Irreducible/Variantbf468b53dfdd3b8daed5f184e4a6be9abf64f1819ed6b0e425e98622afcc2476.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
