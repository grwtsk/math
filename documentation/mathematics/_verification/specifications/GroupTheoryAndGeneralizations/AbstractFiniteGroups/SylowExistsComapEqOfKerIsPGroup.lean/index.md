# Verification target: Sylow Exists Comap Eq Of Ker Is PGroup

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1`.

Source path: `GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Fintype` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommPiCoprod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/sylow.md) | 49 | `declaration-track:d9d8d5669fb2759cc36aa16d40f0ca444a016faf26b3b2085d8f23d01e5298fd` |
| 2 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:c9bd3d224eac4ec01e2a4664cfcd50f886bf5853ff205b724cdd8a691c94a615` |
| 3 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ext.md) | 63 | `result-track:7b32a69f386c2268195e3c95e524a4024dd61ea68c70dfd5a56334ab4ea3d34a` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-3.md) | 65 | `declaration-track:545b5af6b05f3a86ee69b6bc04e193d62a77a2fb95ec0cc3ce02cb1d171cae07` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/instance.md) | 69 | `declaration-track:0d84155a725ac6d1d1c733642ba253eb8764e8631209b0813920e190e8d873e1` |
| 6 | `def` | [_root_.IsPGroup.toSylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/root-ispgroup-tosylow.md) | 75 | `declaration-track:98dacf36e68cd5eb2b9b5f3459da112e1e254c96eabb439caeb07229912d96b3` |
| 7 | `theorem` | [_root_.IsPGroup.toSylow_coe](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/root-ispgroup-tosylow-coe.md) | 88 | `result-track:51348744376efee6780d2a44b6b7b0e590666664003c7127b42c6988be47671a` |
| 8 | `theorem` | [_root_.IsPGroup.mem_toSylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/root-ispgroup-mem-tosylow.md) | 92 | `result-track:368a9031ad863f9b195ddbc4f62aec13a9c9dc3ab438908b84aec310e98815df` |
| 9 | `def` | [ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ofcard.md) | 98 | `declaration-track:c5725d1382222c7d3e38a0a2273ad0019dbd74cad61a0f2d6cfc62ad5be54d3e` |
| 10 | `theorem` | [coe_ofCard](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-ofcard.md) | 105 | `result-track:9bd35d09ee748c631d522b534ef69e188a45fdb2acd4cfc07384cc574f088025` |
| 11 | `def` | [comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/comapofkerispgroup.md) | 114 | `declaration-track:4076b76c8c17896b5e5653db239c1974832d72414bccc26849c61dbaecbc450a` |
| 12 | `theorem` | [coe_comapOfKerIsPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-comapofkerispgroup.md) | 123 | `result-track:af936a81149ede0d2d5bde0354b4cb4b85528a3ff038510651fdac9be408b106` |
| 13 | `def` | [comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/comapofinjective.md) | 128 | `declaration-track:3f29424a36ffdbddadcfa479dd56c68cda40b4c0d7f05a7f1108e76b7a35495b` |
| 14 | `theorem` | [coe_comapOfInjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-comapofinjective.md) | 132 | `result-track:03212e5b0f7a39150416cc1207e8ee901b2d53eb987dc0a52cd23fecdee63acb` |
| 15 | `def` | [subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/subtype.md) | 137 | `declaration-track:4a7cbfe2d03d04261f2f6d23625f7535bfd4a553adf481f4bfb2ebe395b26811` |
| 16 | `theorem` | [coe_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-subtype.md) | 141 | `result-track:b960f77bca3366e585509bb5dd4ccb3eda7fdaabc586141ab8e361ac4de98e8b` |
| 17 | `theorem` | [subtype_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/subtype-injective.md) | 144 | `result-track:9b5ca68d8a09891721c1f362ea43642182a20d6bb1d903b831fe5c0853f47bd9` |
| 18 | `theorem` | [IsPGroup.exists_le_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-exists-le-sylow.md) | 153 | `result-track:d446b2e0b3b311391a90675ae3904f0d9f9993ae11a28841f0f649d50bda7f30` |
| 19 | `instance` | [nonempty](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/nonempty.md) | 171 | `declaration-track:74222804728a599a1d8596f95c1dc064bfccaa922950328f4f573c1779aef043` |
| 20 | `instance` | [inhabited](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/inhabited.md) | 174 | `declaration-track:27bce0efb83632b803683be31855240ebba64b1a00cd0c7e3d0e41a896ba6f00` |
| 21 | `theorem` | [exists_comap_eq_of_ker_isPGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-eq-of-ker-ispgroup.md) | 177 | `result-track:93166875049facc826056c9439623d1dfc1ab3cfdc687f6e039da4fcb6abe886` |
| 22 | `theorem` | [exists_comap_eq_of_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-eq-of-injective.md) | 182 | `result-track:a317ae7193ba7cb04bc2f30c4718cd6c403028ee542cd2709917a94f513c2a94` |
| 23 | `theorem` | [exists_comap_subtype_eq](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-comap-subtype-eq.md) | 186 | `result-track:e1d5fcc4a8eb92bc57f18699d27ffcaa32706e20c5d8fb03464827d8082844e8` |
| 24 | `theorem` | [finite_of_ker_is_pGroup](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/finite-of-ker-is-pgroup.md) | 192 | `result-track:d93e5a4551bce7ddc4ccb8056a106a159dad6f563e53ccc6e8a94fb078fe0158` |
| 25 | `theorem` | [finite_of_injective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/finite-of-injective.md) | 200 | `result-track:0d5b5711ffb742509272316e7b4fd427aaa8f4ac81116fc00abaa51057f5b097` |
| 26 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-4.md) | 205 | `declaration-track:5b4f2054ed2b664ff73b2498a3e0fbf5457173bb88cb2d718dea6e1d36180b36` |
| 27 | `instance` | [pointwiseMulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/pointwisemulaction.md) | 211 | `declaration-track:960e78eedc873e6bca1d69d93c171773b63d270e2b79d2f96a524620479823d1` |
| 28 | `theorem` | [pointwise_smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/pointwise-smul-def.md) | 222 | `result-track:e8056c8f1fccbd2477b5933a95cbfda160d3bc2b4183a68e73696c24202c8dcd` |
| 29 | `instance` | [mulAction](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/mulaction.md) | 226 | `declaration-track:be1948649b8f8ba336f73407f84941d2c0abce7f48fea4b93fc7c7bbe65ecb52` |
| 30 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/smul-def.md) | 229 | `result-track:46486e3f8c3365ac57c9043c64db4798e628b9ecba468e7f1b7dba401e60800a` |
| 31 | `theorem` | [coe_subgroup_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-subgroup-smul.md) | 232 | `result-track:41b7155eba4a314757280df928ebfb9f340216a36fef4d293e8d70349646e64e` |
| 32 | `theorem` | [coe_smul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-smul.md) | 236 | `result-track:2ac84b32ec27e09ea0f4763210b443b242eadbf73be5ba7cd501cc4b478df17b` |
| 33 | `theorem` | [smul_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/smul-le.md) | 239 | `result-track:022d903a51a23d6a7f138a3f92db2cd5c93fdca84aada0900f50ed1a0df282d6` |
| 34 | `theorem` | [smul_subtype](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/smul-subtype.md) | 242 | `result-track:2636ca3f79a0d94315d6255ec3225ddafa7797f58b5a816d9c2f0e082e2acf17` |
| 35 | `theorem` | [smul_eq_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/smul-eq-iff-mem-normalizer.md) | 246 | `result-track:b086e8b582ff4777c1f6fb8a53d8431f9c87e2e8a1445b407eeca7a2e6369fa9` |
| 36 | `theorem` | [smul_eq_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/smul-eq-of-normal.md) | 256 | `result-track:eeb67473df4a2c8c4da72831433ae4c3f1a4d6fdd119eda44de577a973508c65` |
| 37 | `theorem` | [Subgroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/subgroup-sylow-mem-fixedpoints-iff.md) | 261 | `result-track:178985c2759d279fe14dcfe06332c7a76d428ddc4e7c6bdc3e40b6545078e81b` |
| 38 | `theorem` | [IsPGroup.inf_normalizer_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-inf-normalizer-sylow.md) | 265 | `result-track:4a8900bc530669ff3fff8bb8cf4ae501fad0e595e5b395dcb1d80b89b2bc2bab` |
| 39 | `theorem` | [IsPGroup.sylow_mem_fixedPoints_iff](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ispgroup-sylow-mem-fixedpoints-iff.md) | 273 | `result-track:1e3cc68f6bdfd75c9ef92f911818ca7d2669b1cd8179bf847d8ec0363dbc7b8b` |
| 40 | `instance` | [Sylow.isPretransitive_of_finite](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/sylow-ispretransitive-of-finite.md) | 279 | `declaration-track:92463f18aa157e6cf60b27c5959e49318262f2da7a6c199410d86bcd63febc1c` |
| 41 | `theorem` | [card_sylow_modEq_one](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-sylow-modeq-one.md) | 308 | `result-track:1177d09227fc6cbbf10d188091aebe92c28804c9d2c24c50150ccc7c8ac88c3f` |
| 42 | `theorem` | [not_dvd_card_sylow](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-card-sylow.md) | 320 | `result-track:e21d2478eb8692041985ca1bea8e6500c2933807fb8d0177f50896091e8890af` |
| 43 | `def` | [equivSMul](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/equivsmul.md) | 332 | `declaration-track:6533a1f92fabb493c474713b63f1efa64d89ca02540105ca6b5db78e3d0f7df9` |
| 44 | `def` | [equiv](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/equiv.md) | 336 | `declaration-track:dfd5cea607456ed55f2320438bc1ddc91311f39839dd0e23865a3ffdcb13a55d` |
| 45 | `theorem` | [orbit_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/orbit-eq-top.md) | 341 | `result-track:c9fd74dcee42fe7d7693d47c3f926bb394ba6099243aae61a84bd3a87022451d` |
| 46 | `theorem` | [stabilizer_eq_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/stabilizer-eq-normalizer.md) | 344 | `result-track:d0fb0b9b33b1bd489ed1d696563e8bbcbf88e931ea1b318321019a8ee275ba12` |
| 47 | `theorem` | [conj_eq_normalizer_conj_of_mem_centralizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/conj-eq-normalizer-conj-of-mem-centralizer.md) | 348 | `result-track:dc103f9220c5e799728be536b0633734f1946f4634749ae621471f9f32f1c5a2` |
| 48 | `theorem` | [conj_eq_normalizer_conj_of_mem](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/conj-eq-normalizer-conj-of-mem.md) | 365 | `result-track:2a8d535e574d76fc8409d989221b85ece3e9b3e7233da76a3c296fbdff48df34` |
| 49 | `def` | [equivQuotientNormalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/equivquotientnormalizer.md) | 372 | `declaration-track:7e1bec1e704d6c641da5f4dc1e407c40529332d272ec407e657e3c99db70da72` |
| 50 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/instance-source-edition-2.md) | 380 | `declaration-track:2bd0681938f840ebec0eb0e3785dacd3efce07b28611ff2f92b9789f662f61d7` |
| 51 | `theorem` | [card_eq_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-card-quotient-normalizer.md) | 384 | `result-track:36a843d08f9988874360133506ed40605e083ff9487983771149f4bc991636a2` |
| 52 | `theorem` | [card_eq_index_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-index-normalizer.md) | 391 | `result-track:8a2e08016a96ec3ae79ea643893329317359e31a4fc714c0f4dd08e09b326193` |
| 53 | `theorem` | [card_dvd_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-dvd-index.md) | 398 | `result-track:79e0c9182c18c0298ec9ff03edbb0840387d573dea8ad185697c9f490f7aafaa` |
| 54 | `theorem` | [not_dvd_index_aux](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index-aux.md) | 407 | `result-track:7443d324fe3c119b51424d899f33c475ae650c557edc91bc212c1d4cbb163deb` |
| 55 | `theorem` | [not_dvd_index'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index.md) | 425 | `result-track:69bc35ccee84329b3dd7496ccd7d72b41422eb04558d33c0205fd598fc9b2893` |
| 56 | `theorem` | [not_dvd_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/not-dvd-index-source-edition-2.md) | 438 | `result-track:da5ba737dc846e488b8ffebe2bd298112875f360d9bdf5e07a47c125408d4644` |
| 57 | `def` | [mapSurjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/mapsurjective.md) | 450 | `declaration-track:fc1f484461159482734fa2354dc7cbab1dd445bf38dabcad56214b5c152f2a05` |
| 58 | `theorem` | [coe_mapSurjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/coe-mapsurjective.md) | 456 | `result-track:be53e929574054fdc97c10739935c94a9a8d1c9ab95697381e14ab7c8410a4c6` |
| 59 | `theorem` | [mapSurjective_surjective](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/mapsurjective-surjective.md) | 459 | `result-track:5acc75548332ad06ca81cc36a719d6cd338e5cd4c7eebd30e4d20ec8e1244cb5` |
| 60 | `theorem` | [normalizer_sup_eq_top](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-sup-eq-top-source-edition-2.md) | 478 | `result-track:bd8bd7e84be716511b1997e814a4f5c014e79da9509b0fe18b0c8aa4ab75aea3` |
| 61 | `theorem` | [normalizer_sup_eq_top'](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-sup-eq-top.md) | 494 | `result-track:0638c4a90085249bd153627bb14a55ef80b6ce5fd60adb853f47441c8c0ecff2` |
| 62 | `theorem` | [QuotientGroup.card_preimage_mk](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/quotientgroup-card-preimage-mk.md) | 509 | `result-track:646219230f7b2b58cb33a50309a3989a0a9a9f30cb1d66eb540943ca0c7e8c8f` |
| 63 | `theorem` | [mem_fixedPoints_mul_left_cosets_iff_mem_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/mem-fixedpoints-mul-left-cosets-iff-mem-normalizer.md) | 514 | `result-track:72df552da89225dfb22e318164bb7daf6acad80861a570cc53b476462077ab03` |
| 64 | `def` | [fixedPointsMulLeftCosetsEquivQuotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/fixedpointsmulleftcosetsequivquotient.md) | 537 | `declaration-track:12325d60ae455cfb178ed0ed715138eb3c6fd71c6fb054921868aee8a679cac5` |
| 65 | `theorem` | [card_quotient_normalizer_modEq_card_quotient](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-quotient-normalizer-modeq-card-quotient.md) | 551 | `result-track:4cb5171ae5e5d672cce34a5ba91b2c42ee03166841b1c1cb529f9fc5d999f8cd` |
| 66 | `theorem` | [card_normalizer_modEq_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-normalizer-modeq-card.md) | 560 | `result-track:58e4fb05f944b415e0b80d3f568a54da75fb96b1dfabf0c3f60b859086dac45c` |
| 67 | `theorem` | [prime_dvd_card_quotient_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/prime-dvd-card-quotient-normalizer.md) | 570 | `result-track:9bdf123264ebe0b17f68f0d7772660f44e92e7dbccc82424c196d5955e627be5` |
| 68 | `theorem` | [prime_pow_dvd_card_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/prime-pow-dvd-card-normalizer.md) | 586 | `result-track:9ffdf5af6a10c5f954a8a9c4987ae0eb8c2aaac2247a0c9f773f57c886184864` |
| 69 | `theorem` | [exists_subgroup_card_pow_succ](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-succ.md) | 594 | `result-track:26e5ff31ec5e0b2a95e542bdcc602266a7f53b75b371a852359d00033e0de53d` |
| 70 | `theorem` | [exists_subgroup_card_pow_prime_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime-le.md) | 633 | `result-track:9191f011aeef39ddd095ab59e62868fdc454ee0a81627c0e09c6e5050c53c432` |
| 71 | `theorem` | [exists_subgroup_card_pow_prime](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime.md) | 652 | `result-track:30a3cd2e16f1cc16e696c25cdcb6cff04b21358cb4f2d230ad741a808580ba52` |
| 72 | `lemma` | [exists_subgroup_card_pow_prime_of_le_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-card-pow-prime-of-le-card.md) | 660 | `result-track:d98caeac99eb2fc6734b63e1158ebf237f9d0209cd45fbca0c183cd890135989` |
| 73 | `lemma` | [exists_subgroup_le_card_pow_prime_of_le_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-le-card-pow-prime-of-le-card.md) | 671 | `result-track:bd46bfbffdce5b275d3868938e129ed0e7cec62023c0b78679a862265284905b` |
| 74 | `lemma` | [exists_subgroup_le_card_le](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/exists-subgroup-le-card-le.md) | 681 | `result-track:29bbb9ff4491b203904485d7c42af4eb6dd8abb14d6e6c2230a46b8f2ffad6d4` |
| 75 | `theorem` | [pow_dvd_card_of_pow_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/pow-dvd-card-of-pow-dvd-card.md) | 689 | `result-track:07070281b0eb3a36e88365903d1919237656f6109bc00dc2dbbffe821fdaf95e` |
| 76 | `theorem` | [dvd_card_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/dvd-card-of-dvd-card.md) | 694 | `result-track:cc91a9e42769d1bdc8b3f2b1562368ad9ba5cfe42a33990a104b0bf0167b16aa` |
| 77 | `theorem` | [card_coprime_index](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-coprime-index.md) | 701 | `result-track:261bc4aac4ad51af71312ea40e7445c9c0e70f65bdd7f0943b6790592f701224` |
| 78 | `theorem` | [ne_bot_of_dvd_card](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/ne-bot-of-dvd-card.md) | 706 | `result-track:260893b8e7a4e389f92e309df3eca042b49683d0e9f9a4cc6174db48684a47ac` |
| 79 | `theorem` | [card_eq_multiplicity](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/card-eq-multiplicity.md) | 714 | `result-track:5322e6d3e1804d08de337f10c96d3ff6097ea6162e6f77e5ebb66579ae08b936` |
| 80 | `def` | [unique_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/unique-of-normal.md) | 722 | `declaration-track:24a27cf7e2ec891dead11737722416c4367185d6d7ade436303d52c9bf7f2c5e` |
| 81 | `theorem` | [characteristic_of_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/characteristic-of-normal.md) | 734 | `result-track:b67484bd4ee5b9dc25949bcb39c320404dd9d4238f2c9b69e4b17c2f24220e2d` |
| 82 | `theorem` | [normal_of_normalizer_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-normalizer-normal.md) | 745 | `result-track:69a65bb36c1c08189af8283212482b214030eea73ee0937d8fe5cc4018b99e6f` |
| 83 | `theorem` | [normalizer_normalizer](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normalizer-normalizer.md) | 750 | `result-track:39877397b4c1ce399ca3cca64494a6787910a56187bc009d4952401d4951a94a` |
| 84 | `theorem` | [normal_of_all_max_subgroups_normal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-all-max-subgroups-normal.md) | 757 | `result-track:29ed404f7a95eefd491f6440a927e9a1cbe0282100d54a9693fb169500a61f38` |
| 85 | `theorem` | [normal_of_normalizerCondition](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/normal-of-normalizercondition.md) | 769 | `result-track:856b3c8ddf9a300219a28da1903f35929f3061cec8202f280b563602904c80cc` |
| 86 | `def` | [directProductOfNormal](../../../../../GroupTheoryAndGeneralizations/AbstractFiniteGroups/SylowExistsComapEqOfKerIsPGroup.lean/declarations/directproductofnormal.md) | 777 | `declaration-track:7f70fffb211f516f15e6de05fd8f700b5adbcfe8d3cf944508dc3ac56cb1cd79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f681b3aa1ed07cf86de5518bf733ad6fa86503b567d0d697242a281aaa3dfd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
