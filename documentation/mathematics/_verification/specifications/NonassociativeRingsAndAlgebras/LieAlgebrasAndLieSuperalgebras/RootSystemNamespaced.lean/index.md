# Verification target: Root System Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "547bf2d3648c86ddbd257c98d5b98845f730e703",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `547bf2d3648c86ddbd257c98d5b98845f730e703`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Weights.Killing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Irreducible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Reduced` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.Finite.CanonicalBilinear` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Rat` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [chainLength_aux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-aux.md) | 57 | `result-track:09cec0017a9fed3ffd156b4c3693fa61967835662b24e6816b25841a261be28f` |
| 2 | `def` | [chainLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength.md) | 71 | `declaration-track:aab7411ec551b88e5d32fb3800bdcf05bedd05af3d81649ddd5ee96b97226183` |
| 3 | `lemma` | [chainLength_of_isZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-of-iszero.md) | 76 | `result-track:471419c993c58632e7aa4e36e6bbd7071583cc9429537b5fc12869dcaac6607d` |
| 4 | `lemma` | [chainLength_nsmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-nsmul.md) | 78 | `result-track:7429250a5894942db27a8145578ef944a0a3663a9d69f8e4233fde2d1bca074f` |
| 5 | `lemma` | [chainLength_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-smul.md) | 90 | `result-track:ea2f0976599642ec13ca21cd5ae1457a9c69b715738fe15d62065609838269af` |
| 6 | `lemma` | [apply_coroot_eq_cast'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/apply-coroot-eq-cast.md) | 94 | `result-track:039da339a0866156c1d462c697e7bc25b30a9c75ebd6477a865a84e507a53348` |
| 7 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-le.md) | 107 | `result-track:921872d8e4e647d8d767d4d440bf7c63998fbdfa761ebc4334d90a1beae0a127` |
| 8 | `lemma` | [rootSpace_neg_nsmul_add_chainTop_of_lt](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-neg-nsmul-add-chaintop-of-lt.md) | 120 | `result-track:3ab15b5f666eab8a55347534795de7bd3d54a3b382d78aa6385a9f6c8b0a90ae` |
| 9 | `lemma` | [chainTopCoeff_le_chainLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chaintopcoeff-le-chainlength.md) | 143 | `result-track:6f04b28e6447e6d419b08cc84c0bdcdae5d6d4da2d3602865cb54b126ade2a05` |
| 10 | `lemma` | [chainBotCoeff_add_chainTopCoeff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainbotcoeff-add-chaintopcoeff.md) | 154 | `result-track:9da119acbf29f9ac4d051b9162b16a71b9c2a27953018b33c47268a2ee56c40b` |
| 11 | `lemma` | [chainTopCoeff_add_chainBotCoeff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chaintopcoeff-add-chainbotcoeff.md) | 176 | `result-track:208d1e3bafcde884b55fb4a423844162c10bba35035ecd1247923c7dbc03b18c` |
| 12 | `lemma` | [chainBotCoeff_le_chainLength](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainbotcoeff-le-chainlength.md) | 180 | `result-track:fe792a536e337bc4b18b2db8d2cc3ff817f836276f3588382ac984b90e8ab2d5` |
| 13 | `lemma` | [chainLength_neg](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-neg.md) | 184 | `result-track:43169445ff53cda5331de347f9fab0bc86713fdfc3554f9d0e0d759ba3724b15` |
| 14 | `lemma` | [chainLength_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-zero.md) | 190 | `result-track:e2a087e66f10aa2919bed2d97aebaad434e896f038980cbe860b69770ed26171` |
| 15 | `lemma` | [apply_coroot_eq_cast](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/apply-coroot-eq-cast-source-edition-2.md) | 195 | `result-track:5dda42ac880b5d5e067f27f7ba55c14881b51063f1e8517128ce6bace64f51cd` |
| 16 | `lemma` | [le_chainBotCoeff_of_rootSpace_ne_top](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/le-chainbotcoeff-of-rootspace-ne-top.md) | 199 | `result-track:fff664f68d82656f356a2535a2deb70dace74d3a26f8768fc8fe040edb54dc19` |
| 17 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-zsmul-add-ne-bot-iff.md) | 211 | `result-track:0269528cb7a9ca9dde9c2beb10a4fdca06cdded9b75b327e1b92e16c1c258a8b` |
| 18 | `lemma` | [rootSpace_zsmul_add_ne_bot_iff_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-zsmul-add-ne-bot-iff-mem.md) | 229 | `result-track:1f02093788829b579afa36aa6f839d0051e84f1bae0f4e867800a1ffba8a5990` |
| 19 | `lemma` | [chainTopCoeff_of_eq_zsmul_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chaintopcoeff-of-eq-zsmul-add.md) | 233 | `result-track:6949eb8182d82e0e96240446cfcee6db308a8788ed0583f5dcde99d0a0d42bdd` |
| 20 | `lemma` | [chainBotCoeff_of_eq_zsmul_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainbotcoeff-of-eq-zsmul-add.md) | 244 | `result-track:83a1d4f8a64c8babe53560dc3446b6a60b1d16248920cb67572600e25bb2202d` |
| 21 | `lemma` | [chainLength_of_eq_zsmul_add](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-of-eq-zsmul-add.md) | 251 | `result-track:25e53fdab24cf8bd5df66030ee35db1c2538caf0e38c93e29497201cfb63e17e` |
| 22 | `lemma` | [chainTopCoeff_zero_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chaintopcoeff-zero-right.md) | 261 | `result-track:0c1e798bfbb0f56cb103f14991db34d295e969589185179be27b00ee5c7c5f78` |
| 23 | `lemma` | [chainBotCoeff_zero_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainbotcoeff-zero-right.md) | 292 | `result-track:4d7ea0e826d15d1c51337f14c78adeacf6247fb7f276e7f9d5362ddb60f42d69` |
| 24 | `lemma` | [chainLength_zero_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/chainlength-zero-right.md) | 296 | `result-track:95d62bf069267977b3d7ade5df92236900830fa8233061438f199bed4386a471` |
| 25 | `lemma` | [rootSpace_two_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-two-smul.md) | 300 | `result-track:1e9a546af8f6975750e679bf85f0432c470ac50b33134f14d407bacba3dd689c` |
| 26 | `lemma` | [rootSpace_one_div_two_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootspace-one-div-two-smul.md) | 306 | `result-track:bf34511a7e5b563d8a9341c4bd6b3a8de7348473f1b434ed6b087be2030d83b4` |
| 27 | `lemma` | [eq_neg_one_or_eq_zero_or_eq_one_of_eq_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/eq-neg-one-or-eq-zero-or-eq-one-of-eq-smul.md) | 317 | `result-track:7c070d03cf12b81b4e4e4a0762452f2cd9e87e778408e312ac9ce169c2921980` |
| 28 | `lemma` | [eq_neg_or_eq_of_eq_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/eq-neg-or-eq-of-eq-smul.md) | 355 | `result-track:6eb1db2e9eb938b8973e5e258f7168f512ba8bb124395ba38d21f230354e239a` |
| 29 | `def` | [reflectRoot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/reflectroot.md) | 365 | `declaration-track:f17ecd96b2a8e29fb31e8ab1d4f9a3ca346182cb5e27fc62d2e1bc3b7172ff18` |
| 30 | `lemma` | [reflectRoot_isNonZero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/reflectroot-isnonzero.md) | 374 | `result-track:88cf0b02473f3f2ccd4f2c75fc34a215ae526a38aca782c03fd9ac2defcb6d2f` |
| 31 | `def` | [rootSystem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootsystem.md) | 389 | `declaration-track:08384fc001be481021a461538289d9aa7b3d91152f07937aebe9b01c6b1e5dde` |
| 32 | `lemma` | [corootForm_rootSystem_eq_killing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/corootform-rootsystem-eq-killing.md) | 408 | `result-track:500c675391503251ebcdab3f27554c2efa068cf46416a1308b50f7fe8015102e` |
| 33 | `lemma` | [rootSystem_toPerfectPairing_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootsystem-toperfectpairing-apply.md) | 413 | `result-track:d8923f4ee13f2afbd36c15bf5a816c95d172de139c4b214c7aef0ff1d2ef5595` |
| 34 | `lemma` | [rootSystem_pairing_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootsystem-pairing-apply.md) | 415 | `result-track:671774a6eed201f9e1a9c09d519c4edb077218899ab713db13e79b3e0002d81b` |
| 35 | `lemma` | [rootSystem_root_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootsystem-root-apply.md) | 416 | `result-track:69a0431325de26a7cb86db30a11e412515284a0950d33089ac8383447522070c` |
| 36 | `lemma` | [rootSystem_coroot_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/rootsystem-coroot-apply.md) | 417 | `result-track:5c1bf9013cf3cd736a830960de2b490c92994ba76137287b98ff8974acec218e` |
| 37 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/instance.md) | 419 | `declaration-track:16a2da23606a40fb4a116735d079fb6fbd9ffd850444b8d9551ece30c0722f73` |
| 38 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/instance-source-edition-2.md) | 423 | `declaration-track:8def6607c5c267fdbe5c93def4dde0d4d841d309ef0fd01d80260345211a98d1` |
| 39 | `lemma` | [eq_top_of_invtSubmodule_ne_bot](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/eq-top-of-invtsubmodule-ne-bot.md) | 440 | `result-track:7ab9dfcce74ee959ae911f6bdb12a62a83af53ccea0bb7e06edd517393ac3a4f` |
| 40 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/RootSystemNamespaced.lean/declarations/instance-source-edition-3.md) | 602 | `declaration-track:f33cd2bc88871ed21a1cc3e011da88debc68d07010161376427b0c9d69a4e52c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=719b37785c4bcfd87c8a1979e2e3f6b33499f30ae0d802df35ba80bf470f100e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
