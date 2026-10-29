# Verification target: Architecture Tests Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2c328323b596bec89e71eac61652b3803a572f1",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant6e08ad16afb2bbcf5a42b8bdaff03dc0a67a6b217395fc9557026d2699440c7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2c328323b596bec89e71eac61652b3803a572f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant6e08ad16afb2bbcf5a42b8bdaff03dc0a67a6b217395fc9557026d2699440c7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant6e08ad16afb2bbcf5a42b8bdaff03dc0a67a6b217395fc9557026d2699440c7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Integration.CertifiedUpgrade` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Runtime.RingState` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Runtime.ReducerIR` — import line 8; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObservableAdapter` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Fin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairSystem](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/pairsystem.md) | 30 | `declaration-track:7aa27cccfd3fce6c7649bc2a3b0cb2ae1bba58e44374c6db17661decee4aa9cf` |
| 2 | `def` | [bitSystem](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/bitsystem.md) | 39 | `declaration-track:f5a4e1e870806022f78d740fb5a680cc2c600bc8f0b625e05b6126eae3caa98a` |
| 3 | `def` | [firstBitFactor](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/firstbitfactor.md) | 48 | `declaration-track:11d59c114cdcd1e6d822f7a1426c7e0ea83394fd9781c09f606c119bbed0a001` |
| 4 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example.md) | 57 | `declaration-track:0511b3099a0893c3f5f7e85b3b90327df2007b30700371d43461421c0ddd333a` |
| 5 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-8.md) | 64 | `declaration-track:322afac2a98b0f84614abb14cecc63a59d078f66489d90ee055e904828276777` |
| 6 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-13.md) | 69 | `declaration-track:49dd7ce2eda5645e3cfae0fa976829a7b027b9b8437584f1884b32cf89ed92f7` |
| 7 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-38.md) | 74 | `declaration-track:fb0f487b716b94d6673cd2c16a575dee8f089f086b29c795a9341abaef51a820` |
| 8 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-27.md) | 81 | `declaration-track:b766246c4061ec8c45d30ff08fb6eb3b1f9af25d3efa1d6ca9b98847b05f6d76` |
| 9 | `def` | [chainDependencies](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/chaindependencies.md) | 91 | `declaration-track:05f5ba5ffdde54c4a7ea0e75aded916aba4a77874c01571da583cf8ef8454820` |
| 10 | `def` | [chainGraph](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/chaingraph.md) | 97 | `declaration-track:00a182b31c8bc88cf7f01755612fb827f21286da47dae31c98214413c5840eea` |
| 11 | `def` | [project0](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/project0.md) | 103 | `declaration-track:4b98aad9883420bf0270c9aacca32f5a1e4317ea03f21d4082373198fedcb82c` |
| 12 | `def` | [project1](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/project1.md) | 105 | `declaration-track:39c02d39a31838fe226bda99602da8a334b82477d87a61b0fbeda2a65f4e8a64` |
| 13 | `def` | [project2](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/project2.md) | 107 | `declaration-track:bac2b98c03ba50729ce700c8f55906250971bb7257fdd33f7564883d1887d4f5` |
| 14 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-6.md) | 109 | `declaration-track:2e8e3247d2078083ed0b2a2bf560c01b7a27bccdba9951ba29330a469ba716ef` |
| 15 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-17.md) | 111 | `declaration-track:6830d3953ba594c54ac89593f7c423b30eba6f5f5403099df13eca3503c5e81f` |
| 16 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-25.md) | 113 | `declaration-track:a88e5a8e278b6a5ad85830bbf90ac488772b908def97e77b2beef80599870da5` |
| 17 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-16.md) | 115 | `declaration-track:671ef620904dfc1537b964b8287dfbb9e51eb9be0fc0373b76824960b203be7a` |
| 18 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-20.md) | 117 | `declaration-track:76ebde7113cf0452501c7b20ffd1a70373c027cd3a1e0a1accba7156b094ae9f` |
| 19 | `def` | [topTenant](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/toptenant.md) | 124 | `declaration-track:b9db7b611681d7b63bc60ced716b226a10db32bd800e34728880d0e0d08234b4` |
| 20 | `def` | [indexEnvironment](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/indexenvironment.md) | 128 | `declaration-track:4009c3c2e7e9bb49054e30cfe83a610708b7ef1eccd53656bf70e1f6162c37e8` |
| 21 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-35.md) | 131 | `declaration-track:e0b1288cfcd81090f6c0d7685991f001c8998e23f97f88a5fbfbdb6edafb0e3e` |
| 22 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-11.md) | 133 | `declaration-track:368628727eb4c63dd960b87efcddf9033c4f31864db8777c5109eba17cd02cec` |
| 23 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-26.md) | 135 | `declaration-track:ae31ec79113d63e9bf1eb5596c2ce35380165eba1ee51b995722d3f430f06261` |
| 24 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-12.md) | 137 | `declaration-track:43e68279f0084ad1ef6cb8c6757823c0e9836d2f93a945e2d5b5fa5798fba002` |
| 25 | `def` | [oldChainNode](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/oldchainnode.md) | 143 | `declaration-track:da72e92ae5101c99982f63020f11c43a7f63c25a6a44aee825b83b37095a85e1` |
| 26 | `def` | [newChainNode](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/newchainnode.md) | 151 | `declaration-track:c1654455a9b7f6e2a3fd8c7699532346c7bdc175b0a81178e451a1995a2fa2b0` |
| 27 | `abbrev` | [oldChainWorkspace](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/oldchainworkspace.md) | 159 | `declaration-track:68892d0f1b1d8c65357da55bee40eb158c56159ee124f862b080ae2f5306f2b8` |
| 28 | `abbrev` | [newChainWorkspace](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/newchainworkspace.md) | 163 | `declaration-track:8163e2660482e720423845fd64ba04b046b8b68276bfcf072e202fba0a165721` |
| 29 | `def` | [incrementUpgrade](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/incrementupgrade.md) | 168 | `declaration-track:bd29e53dd53ea1d66efcf7e27ce9a31bdd154b2ab422bf6ca7d0d41fa12b96f1` |
| 30 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-31.md) | 173 | `declaration-track:cf506994d2a718b5334155cd471df139d97bb0968a4818e709ea0012d9d50f7c` |
| 31 | `def` | [chainArtifactMigration](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/chainartifactmigration.md) | 179 | `declaration-track:b9ff856fc15c945882b81edad6305418135a759e81dab5c24e6a9f6fd495641e` |
| 32 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-7.md) | 185 | `declaration-track:2f3f4d5f5362bef66fb24612c009fd496e3728533db790fd2c43bb3b7929f16c` |
| 33 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-5.md) | 195 | `declaration-track:23ee677c4239599be26a9e56b4856573864c7c736e49e86bcb0edcc113183852` |
| 34 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-3.md) | 200 | `declaration-track:10a230dbfde673bccc2f1176389a19570e9d2eb69676926cfc21df50c92906e1` |
| 35 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-33.md) | 205 | `declaration-track:d8280daf8b9ba2e064837786e69963f4441ee5b560a861cf6505919cbe2bc926` |
| 36 | `def` | [publicMiddleChange](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/publicmiddlechange.md) | 216 | `declaration-track:62876f7d427b5152b70d73f28962b953f2bf6616bdd4177b0ec508afea2f334b` |
| 37 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-4.md) | 221 | `declaration-track:174cc9517f3fd9bfab31c18b5a028e1de8c2acb9708c1e2ece312e6d57a7b3f1` |
| 38 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-28.md) | 227 | `declaration-track:be8831075387e70feffc70b8e118ae93d32c07b4dd898456b038d84d94f1d08e` |
| 39 | `def` | [bottomTenant](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/bottomtenant.md) | 231 | `declaration-track:a932453c495a070b8521683331b5fbdd9545c9887079c0c3f7998e872a633083` |
| 40 | `def` | [topImplementationChange](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/topimplementationchange.md) | 234 | `declaration-track:dddd9b0ff33312af2a5841d02440f4764121f9a4e98e1629dd592056a60b0273` |
| 41 | `def` | [certifiedIncrementUpgrade](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/certifiedincrementupgrade.md) | 240 | `declaration-track:07e19a029e247e34fd812495bc785fc21a8498b6c82af6cef6762073d26e1b77` |
| 42 | `def` | [certifiedIncrementResult](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/certifiedincrementresult.md) | 247 | `declaration-track:297c58b305c7c4bc2e212203e9cc9918b2fc58a2468b8b1fe4045ccf99ffc2e8` |
| 43 | `def` | [chainRootSystemCapability](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/chainrootsystemcapability.md) | 254 | `declaration-track:2b84c19191898c498c63a3283425d6055bcbf1109fb3d0e9d1132fb99a04e871` |
| 44 | `def` | [chainRootSystemIsoCapability](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/chainrootsystemisocapability.md) | 260 | `declaration-track:2bfca7c3e59171804e82c43e086b88347cc340ee17fa2b176f05fb7db1d041ed` |
| 45 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-10.md) | 266 | `declaration-track:33fedf1cb8e6909cc904c174eb4eb5f05724163b6ace04dc2d07bd1cd166a56f` |
| 46 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-2.md) | 275 | `declaration-track:0cecbef9cfefab9593790ae41448e005e8723cccf30bc24b328bb7c5ecf4faa1` |
| 47 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-23.md) | 283 | `declaration-track:a3da4a75f0461cfb55000f10c0180f744783487264ba447890cb6c8b2934536e` |
| 48 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-18.md) | 288 | `declaration-track:6fdbc59bf74598bd66577ed0aac8d73f81b6075381d655bb367524d31f116de1` |
| 49 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-34.md) | 294 | `declaration-track:df34b11b03cbe0d5788432bf42c79d6de58b690de9b0d6da4a25f0f57222e1de` |
| 50 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-19.md) | 299 | `declaration-track:74a8bb1b78c4de62717bd0046b33c12a5c3af56f874aae1d38cec1e0eaa66c9d` |
| 51 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-21.md) | 306 | `declaration-track:798801901165f8622d18a14137e9eb894b319ea65f869274699de87d0efd7193` |
| 52 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-29.md) | 309 | `declaration-track:c503af4bfa0dc78a6b6299d81cb2f62ae329461e9353daddb7db556571c94f48` |
| 53 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-32.md) | 313 | `declaration-track:cff2526e761df3204bbf09c75b40fa5867f2b3f56f959eaf644bfc4daaa98091` |
| 54 | `def` | [emptyNatRing](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/emptynatring.md) | 324 | `declaration-track:5e99e2caaa6b12443b373268d875ebfc70cc75a44b4a4c396c39a12adccf9c85` |
| 55 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-14.md) | 328 | `declaration-track:60c5d92bb595621572cac63f019e224aa6483c22f2b2505deb9c64cb2077b62f` |
| 56 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-22.md) | 330 | `declaration-track:83225674f2e08bd915dd82308e5c9cdb2cb5f5e69a37ce6efd9eaa036ef3fc5a` |
| 57 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-15.md) | 333 | `declaration-track:60e43bbbaadf21afb39a9036c1b44ba8d4b669f6e8ebfc979809f488083ecc01` |
| 58 | `def` | [moduloThreeReducer](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/modulothreereducer.md) | 337 | `declaration-track:fdf7b2a777e2b524c0f5a825c7b1f41b131467cdc7a9dd472430c14c0d96abf9` |
| 59 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-36.md) | 343 | `declaration-track:e74d795c028506d35f422b09bcc4993ddcc54ae5608db382620acccf9c364582` |
| 60 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-24.md) | 346 | `declaration-track:a6ba15f1a09a0af873443fdc37e195d0036f07ebb88646ce9b36f69b57a5affb` |
| 61 | `def` | [oldToggleSystem](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/oldtogglesystem.md) | 353 | `declaration-track:77f7b7ebd2d75d608cdc9bbaf249a68b70c0cbc56abcc7cfaa9ffba875ed56fd` |
| 62 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-9.md) | 359 | `declaration-track:32ee52754203cbb6b2b49d5e4614778b754ea2ffb4506fd0023c8f6545a64751` |
| 63 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-37.md) | 364 | `declaration-track:e77a15673bd6eeff62168f8a67d86620854f305a0264b54632de8bb39a27e5a2` |
| 64 | `example` | [(anonymous)](../../../../Combinatorics/ArchitectureTestsNamespaced.lean/declarations/example-source-edition-30.md) | 369 | `declaration-track:cb610db85a1bd79e5433501a5d9c879b1eb928b35ad4f41e9b32af7dd4558cce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abca4d661a6e87b5f17f95ca1622f7cf1a8d7a59ea9c79eaba9719f7700ff686 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant6e08ad16afb2bbcf5a42b8bdaff03dc0a67a6b217395fc9557026d2699440c7c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ArchitectureTests/Variant6e08ad16afb2bbcf5a42b8bdaff03dc0a67a6b217395fc9557026d2699440c7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
