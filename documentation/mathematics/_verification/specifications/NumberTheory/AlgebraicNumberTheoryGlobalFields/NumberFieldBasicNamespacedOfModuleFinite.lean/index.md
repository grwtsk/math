# Verification target: Number Field Basic Namespaced Of Module Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c206ac97c059f620e9c3565d959a4199ef2bb18",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfccfe2cf7f30853eb06dbdaf138a9d999b0da88bf267ea52a43c74215eda2b3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c206ac97c059f620e9c3565d959a4199ef2bb18`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfccfe2cf7f30853eb06dbdaf138a9d999b0da88bf267ea52a43c74215eda2b3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantfccfe2cf7f30853eb06dbdaf138a9d999b0da88bf267ea52a43c74215eda2b3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NumberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/numberfield.md) | 46 | `declaration-track:3dc460bdd0ad5c888e122298e23648963063017c5bdf5f22f293835263f55469` |
| 2 | `theorem` | [Int.not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/int-not-isfield.md) | 55 | `result-track:845a3c5f2434fb11dff4f2993bcd227590c259487455c0b478b88795c754df01` |
| 3 | `theorem` | [isAlgebraic](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/isalgebraic.md) | 66 | `result-track:5da43ddd9f3ce3b65a9f9e687afee81fdb7531f31738a80fdbb7e134be84abac` |
| 4 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:2d4c729592c653491fdc98e188111813af9df4387feaffc598ecff69dad9d349` |
| 5 | `theorem` | [of_module_finite](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/of-module-finite.md) | 73 | `result-track:4a48907377959a8906b5249385fe987cab5b8aa0ad49ec02aeb9e692a4498e9f` |
| 6 | `instance` | [of_intermediateField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/of-intermediatefield.md) | 80 | `declaration-track:c787e28e88e70c9a71e0380eb8c7c7c3e76785142b18cb9f00dfb45de94718f6` |
| 7 | `instance` | [of_subfield](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/of-subfield.md) | 85 | `declaration-track:9b5f14520f0585d1d095530437ebec7a034dc19c980c60d9671aa5e0146df04e` |
| 8 | `theorem` | [of_tower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/of-tower.md) | 88 | `result-track:8b07e122a69611fd77204d8748c7c799cb80c3b760de8a14e16988c879f7b2d8` |
| 9 | `def` | [RingOfIntegers](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/ringofintegers.md) | 102 | `declaration-track:3dbd85ef53ecdfb4a9893f6f2004d57dae26e555f7ab7661fdd674f3d2e76aae` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-14.md) | 109 | `declaration-track:8266d89ac507087232016460916d016b0f768f2b08143d76e44f4ade56118137` |
| 11 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:131a79d391807fbdf2db67170ca4f5068691ade77a1da6d6f4a26dc869fb0615` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-11.md) | 113 | `declaration-track:5cbc3fb9e406862a228cf53721b2d0b77f80cbe807d53287c23b55ef859d59f6` |
| 13 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-18.md) | 115 | `declaration-track:a36b85cb8921ee2b7b4ee390ae39763fdd727e9cb7168914982655fc7fd24181` |
| 14 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-10.md) | 117 | `declaration-track:5947a50bddf134b9716f4b551e420d9f417873fb97c203310d5d9e15e04ad95f` |
| 15 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-3.md) | 119 | `declaration-track:179f3cb83538e0a47c3b6451aa2b1fde576aff87e85a30487329e925d5d242f8` |
| 16 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-9.md) | 121 | `declaration-track:49d00f7fdd24f6fb30d38a0760e1e6a5b78116a358a7301fe563ca1e0a9f80d4` |
| 17 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-17.md) | 123 | `declaration-track:999005a22dcd98112445dd1eb877745c2c5b2a4c4ced4b5541a70a3724ade339` |
| 18 | `abbrev` | [val](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/val.md) | 130 | `declaration-track:b246c1f2ad218aeab9625489521bb4e3ead9e0abadf43ffb1c489c10e7c67bc6` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-19.md) | 133 | `declaration-track:ad062f243379cc0f5c28c79ffc3280e3eb5c3366692ec63cfa8858743da0fdc4` |
| 20 | `lemma` | [coe_eq_algebraMap](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-eq-algebramap.md) | 135 | `result-track:f5a209a5ee96f57c5a452301b3a4a7c2aa11719a096bc7a6400bcdf3141a0a29` |
| 21 | `theorem` | [ext](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/ext.md) | 137 | `result-track:44a1685b7aaed0fbb2bec6200e771186251fa47aef6565289825bb8fe12b7014` |
| 22 | `theorem` | [eq_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/eq-iff.md) | 141 | `result-track:7af63e15f82561c12017a2b81587bb4c43453edbefd24b34f816d00c888b41d4` |
| 23 | `lemma` | [map_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/map-mk.md) | 144 | `result-track:71013844fc8567298936871d86a2de1745093939f416d9fc5d93a8ccc8e3a70a` |
| 24 | `lemma` | [coe_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-mk.md) | 146 | `result-track:329eca952831e0b947cd3220988607d8515781f8dea4a6a047e4ea2d2ae4791a` |
| 25 | `lemma` | [mk_eq_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-eq-mk.md) | 148 | `result-track:ccc6a274227e130f6d466354c4bee963617b0aab5863c712a839009150ed3a1b` |
| 26 | `lemma` | [mk_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-one.md) | 150 | `result-track:02c0306aeb83ad6a1246d8c6eba2b2af2eaba12721b50a48a9d96ccc7394c3d5` |
| 27 | `lemma` | [mk_zero](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-zero.md) | 153 | `result-track:20e6cac31f5ac1679c6e4bb69991c7c3555c9be6ea61b0c710564cfb80684855` |
| 28 | `lemma` | [mk_add_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-add-mk.md) | 156 | `result-track:6f9d80a3ec0b318959a34542bdc22885f1a4cceaf5e7b4c8bd555eaa8fa3f5e8` |
| 29 | `lemma` | [mk_mul_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-mul-mk.md) | 159 | `result-track:7827e991a6bfc2d6dc124b755dca35830c87b3072e1165e3ea5f9b37bfa0aa1d` |
| 30 | `lemma` | [mk_sub_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mk-sub-mk.md) | 162 | `result-track:1bcaf26ed2694d702d7d1a5a8c402aa5d90288c7a58c39e5b0973f2539e2ca7d` |
| 31 | `lemma` | [neg_mk](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/neg-mk.md) | 165 | `result-track:5a86ef8f879ae17cf294a4408f5b7d04296b2b95f37ff99696cf19af2dfbd2dd` |
| 32 | `def` | [mapRingHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mapringhom.md) | 170 | `declaration-track:c23ca6dacac5c52ab96dc99809f9325624f9a7071fce3d721dd75eec5bfefcf8` |
| 33 | `def` | [mapRingEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mapringequiv.md) | 180 | `declaration-track:25d894a339731b859bf14f3218d4ef48b0ca491f22af40368edaca06a2d63e1b` |
| 34 | `instance` | [inst_ringOfIntegersAlgebra](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/inst-ringofintegersalgebra.md) | 189 | `declaration-track:7191cfcaf4b72213ad66bbcb41bb7b4a9f0d8848ba542a7efd2faf79dce51ec5` |
| 35 | `example` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/example.md) | 193 | `declaration-track:71916edba6ca70f62e67103f3fb25030f68e6a7d408dfb8d488a8dcd88e061a8` |
| 36 | `def` | [mapAlgHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mapalghom.md) | 199 | `declaration-track:3a7880ec7eefee3f4f49251521e5eab22041e728f8192808064abcb0a237f5e9` |
| 37 | `def` | [mapAlgEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mapalgequiv.md) | 206 | `declaration-track:f2fd842fa004dbbbcfbb5c189abfcace79e5ff27e2dd86504d564fb99a73cf81` |
| 38 | `instance` | [inst_isScalarTower](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/inst-isscalartower.md) | 212 | `declaration-track:0ec865bad8287dfa433911ad0e72d8a9fc21942115382e77c60201d766b4ba37` |
| 39 | `lemma` | [coe_injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-injective.md) | 223 | `result-track:9673c7682929e660922c6b1de7c62efc530f4873da5443f58f3552fb8ce25a0b` |
| 40 | `lemma` | [coe_eq_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-eq-zero-iff.md) | 231 | `result-track:4fc6cdf744411a2ed846a32ad83a25a42c09141a7c9e38291fe0247bfaa45681` |
| 41 | `lemma` | [coe_ne_zero_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-ne-zero-iff.md) | 239 | `result-track:84953cb2822900f72de6503d3ccd5e1713457cefaa37e1a7f73e3ee6c1174fc6` |
| 42 | `theorem` | [isIntegral_coe](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/isintegral-coe.md) | 242 | `result-track:0b15409f41c542e98810f47a9e8441facd6bb846de6797969fceb20d1c932f1a` |
| 43 | `theorem` | [isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/isintegral.md) | 245 | `result-track:c27eb84d92ccad649282ea60a2a325360eb13e6111770ce73057aa4cacd36acb` |
| 44 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-4.md) | 250 | `declaration-track:184792368e4a542df5e1e71cfdcb27011aff597dc9d10a032b6c512f52f8e5f1` |
| 45 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-22.md) | 253 | `declaration-track:beb509e61a5a5ff7d545ac71d79bcbf6bcfcba0475b33bbaba5739743c601147` |
| 46 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-6.md) | 256 | `declaration-track:34c10c19387ef93fb24a59b818ad91bee0d3aa58b0db08e51f13ddec8134f676` |
| 47 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-13.md) | 259 | `declaration-track:81ac9a6edac06bb7daafa564411b41092da045bf64c46f237d10705e63a7d814` |
| 48 | `def` | [equiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/equiv.md) | 263 | `declaration-track:776495f3db8c60be545f456ed7f452205cebdf9de62c55236b3b8ddeb5f4ea55` |
| 49 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-21.md) | 269 | `declaration-track:aff5032b07ef5b01a479dcbbb53ac0eeed7e5a8a2ef33480b720d0dbfb153c1c` |
| 50 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-23.md) | 274 | `declaration-track:f7a05bde89915cef8c8cf3a1335b42ad9fa725c31dcd31dc6098f480c15a7328` |
| 51 | `theorem` | [not_isField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/not-isfield.md) | 278 | `result-track:648c7d10e37f72e28e2ed242917ba271b0713759a04f4e747fca7e975e40e157` |
| 52 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-16.md) | 284 | `declaration-track:8cfc628572db52ba1e3878b3d0d4f8fbb279ff64893247ec8876b2db1bf92525` |
| 53 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-15.md) | 287 | `declaration-track:846c08edc8e994801ea264e60d9f2a7ae576288d2c67215c7f0a3fd8c443f05c` |
| 54 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-7.md) | 290 | `declaration-track:362c61d7646b1512bb6d6db60bab16fe6c3962544646fc025f6cf9bab7b4a228` |
| 55 | `def` | [basis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/basis.md) | 294 | `declaration-track:79e19612543b08240341d47b76babb484de48e08607d81aff32b1fc7516797cc` |
| 56 | `def` | [restrict](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/restrict.md) | 301 | `declaration-track:b59a4b17236d4dfed47d12853a1f7adcf32f6e08d2d262774c4f510e1be0bdb9` |
| 57 | `def` | [restrict_addMonoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/restrict-addmonoidhom.md) | 306 | `declaration-track:d149291111b55888debb50c0e79bff0394a5ccce7383c26b8917016bd3656aba` |
| 58 | `def` | [restrict_monoidHom](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/restrict-monoidhom.md) | 314 | `declaration-track:f0c7d4b8709fe3f5f530232a701630ddce9631c845ad926de4d22c13bb2619ba` |
| 59 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-20.md) | 323 | `declaration-track:ae5bfaeefe6d4132e6904b963e5744d8ec833ef5ebaa054ebd50146cd7252622` |
| 60 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-8.md) | 326 | `declaration-track:46880e73803778496cf412fe824be118e1139bbb0a09f0c387d6d0d70a37c12a` |
| 61 | `def` | [algEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/algequiv.md) | 330 | `declaration-track:e5cae61eeaa95271a3c61e693ad1ba004762effd446885ca722984ed07be1534` |
| 62 | `instance` | [extension_algebra_isIntegral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/extension-algebra-isintegral.md) | 335 | `declaration-track:00467972f1c33d8c2ef588811cf03f93bdf25495b56572696aa09f24e96bf6c1` |
| 63 | `instance` | [extension_isNoetherian](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/extension-isnoetherian.md) | 339 | `declaration-track:bdaaabc2c5d23e8da1dba90414f27b8bc9a69115e81d8edb2825b1105935ddb0` |
| 64 | `theorem` | [ker_algebraMap_eq_bot](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/ker-algebramap-eq-bot.md) | 343 | `result-track:a44b39bd461a0a10bfdd18681edca077b82ca412a9a9d713bdb33d0200fe408b` |
| 65 | `theorem` | [algebraMap.injective](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/algebramap-injective.md) | 350 | `result-track:14e309375292d179766e111672f328806efa43245ee0fcba605bd1e6f6fb6d6d` |
| 66 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance.md) | 353 | `declaration-track:042715db09040db645e3d8063fc243e73961b00dc4af5588ac93416f1230bdc2` |
| 67 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-24.md) | 356 | `declaration-track:fed1dc138413cfd8c162ddc83234bcb17d71cd5f687b300ddbdbbe4df89dbcbd` |
| 68 | `def` | [integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/integralbasis.md) | 366 | `declaration-track:8724281b695e6165491be98b586f6eb38771f1939d402c31be00e135eaf6ebee` |
| 69 | `theorem` | [integralBasis_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/integralbasis-apply.md) | 370 | `result-track:881938b8f2a6839d5dff9cd14346c10a5e9cbe0aac8235cea3ee91d4018682a3` |
| 70 | `theorem` | [integralBasis_repr_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/integralbasis-repr-apply.md) | 375 | `result-track:94614f4a9bc7f91f4e84d8a4f5b9661da7b2dc569b55bc62a904b387b52b86fe` |
| 71 | `theorem` | [mem_span_integralBasis](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/mem-span-integralbasis.md) | 380 | `result-track:321f5c47f6c9b71574e662112a32f772bf50fe234c26db54c33063d9ce04cf4a` |
| 72 | `theorem` | [RingOfIntegers.rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/ringofintegers-rank.md) | 385 | `result-track:a1f9e102e5d1ddaf8934e19b27eccad6fa3d60b052294773af8454a813e62344` |
| 73 | `instance` | [numberField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/numberfield-source-edition-2.md) | 394 | `declaration-track:cc05e61e8e162f2417a51929639bb9485f5940e69409f9ab7c5e0a28147ac4ea` |
| 74 | `def` | [ringOfIntegersEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/ringofintegersequiv.md) | 404 | `declaration-track:6496b901f9d492d511ba51cf8b85640c9e832704c7b1c73fbbc22b71b604e567` |
| 75 | `theorem` | [coe_ringOfIntegersEquiv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/coe-ringofintegersequiv.md) | 408 | `result-track:d836de7d664042f1931f0ebb87872357d9c82f49c9fbb4b4ee4cd607c0089328` |
| 76 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/NumberFieldBasicNamespacedOfModuleFinite.lean/declarations/instance-source-edition-12.md) | 425 | `declaration-track:7412286d66bbf398ee22ef28a15ea8f182c69742574f31c29e1f447416bb544f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b339ef5cad6e0aa59db03ee55277bb013dbd5b76beb11c211ad15a42d536cedf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantfccfe2cf7f30853eb06dbdaf138a9d999b0da88bf267ea52a43c74215eda2b3e.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/Basic/Variantfccfe2cf7f30853eb06dbdaf138a9d999b0da88bf267ea52a43c74215eda2b3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
