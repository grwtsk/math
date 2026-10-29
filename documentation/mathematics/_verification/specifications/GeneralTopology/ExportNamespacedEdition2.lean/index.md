# Verification target: Export Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "445735cc7fe93e279ac0e830eaaba311dfff0e6f",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ExportNamespacedEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/ExportNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `445735cc7fe93e279ac0e830eaaba311dfff0e6f`.

Source path: `GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Surface` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.AST.DeclarationGraph` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.AST.ModuleGraph` — import line 9; external provider; requires a separately pinned dependency.
- `Surface.AST.Trusted` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jsonEscapeChar](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/jsonescapechar.md) | 21 | `declaration-track:f896cf15f5ffbd5a84662c7ecc18539d20da5898687f964bb41166f73a2e5fb5` |
| 2 | `def` | [jsonString](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/jsonstring.md) | 29 | `declaration-track:f92917b2fd36b7d655388f6b6753324518cc429653443854fb667852fe21a12a` |
| 3 | `def` | [jsonBool](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/jsonbool.md) | 32 | `declaration-track:1453c602851ae85d1bc66ef2454cb31369542f4bf3e8f40dc814a08911463ba0` |
| 4 | `def` | [jsonStringArray](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/jsonstringarray.md) | 35 | `declaration-track:b4f285f49fba70aad2f36e29138f66386cc8c52a0806bce310d3453944e3bc41` |
| 5 | `def` | [jsonStringOrNull](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/jsonstringornull.md) | 38 | `declaration-track:97fff96bfa491b52a4a9e83fccff6bbe92b5ecf2d29ac9493e77fced1da1f93d` |
| 6 | `def` | [uniqueSortedStrings](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/uniquesortedstrings.md) | 42 | `declaration-track:c5c9552f593c8bb34692749d7da1e868f50fdb045443e50bb4340b478e051e63` |
| 7 | `def` | [constantKind](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/constantkind.md) | 45 | `declaration-track:36cfb0378b05f7dc842fa4287715a4bc3e3ca3c7bf295e5402acfa795e93b847` |
| 8 | `def` | [proofStatusForConstant](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/proofstatusforconstant.md) | 55 | `declaration-track:12209c4fd252103112d0553e0a6c5742fb13048ad68b8943b298b7ab8d3692bc` |
| 9 | `def` | [axiomExternalStatus](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/axiomexternalstatus.md) | 63 | `declaration-track:ea3b1eaa564ef5ad7685974b743e5bc9f7c8bae423c90b61b1144b91bef4fbcc` |
| 10 | `def` | [expressionDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/expressiondependencynames.md) | 71 | `declaration-track:a288c489893df9ec1ace4653768d641c2c2aeb0a6a6bb607d429ae13dccc350a` |
| 11 | `def` | [constantDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/constantdependencynames.md) | 74 | `declaration-track:9daa7267dcf48876b7ed26d10c0ddbb74186403dcd57f28c12045a5df9363d44` |
| 12 | `def` | [surfaceDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/surfacedependencynames.md) | 83 | `declaration-track:f33ee94b657966619c0cd404ca4c7043a4073dd7f0dca28de0435851072b277a` |
| 13 | `def` | [importedDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/importeddependencynames.md) | 86 | `declaration-track:e3c52eac68c08e5daf86820e214b8f2bdbc6ae07d5a1d92d40ff8eb6b4123f86` |
| 14 | `def` | [prismaticTheoremSeedGateNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/prismatictheoremseedgatenames.md) | 89 | `declaration-track:3ecbd1f74acfdef7e49e981f48c92e0c24df37680c93fa3fdc53f507fc71883c` |
| 15 | `def` | [majorTheoremObligationPatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/majortheoremobligationpatterns.md) | 96 | `declaration-track:52157d85469689e0677e7863aa1c21be005950b7d6f66f066d4c40814a37f7e3` |
| 16 | `def` | [majorConstructionInputPatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/majorconstructioninputpatterns.md) | 108 | `declaration-track:f673a742858f5d61caface07894a74db82eaa6bfcad329cb0531a5ba8943e752` |
| 17 | `def` | [finiteStructuralInputPatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/finitestructuralinputpatterns.md) | 120 | `declaration-track:f226c0bb6f9b28dabec04917282ee139489fb4a77e7e578266b4b302dc59eb72` |
| 18 | `def` | [readinessDashboardPatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/readinessdashboardpatterns.md) | 125 | `declaration-track:fbec18396914c725027ad3d027f7b46dd6b9c62174f8ebc99c2490e8d8f6bf6c` |
| 19 | `def` | [certificateGatePatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/certificategatepatterns.md) | 130 | `declaration-track:ab653ef57133402302a44021128a435c4b584201c58562ca2cc01d45671f31ff` |
| 20 | `def` | [currentMajorGatePatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/currentmajorgatepatterns.md) | 164 | `declaration-track:e2f9a9b31f6f859508a5ba1e92110c97d5b042a4519e365ae18711a8736a20e6` |
| 21 | `def` | [manifestGatePatternMatches](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/manifestgatepatternmatches.md) | 171 | `declaration-track:958cfc69efe98c612180a10bce6dbe5c9939eada6b60622f1012a8ce34759ca6` |
| 22 | `def` | [majorGateAuthorityClass?](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/majorgateauthorityclass.md) | 174 | `declaration-track:a088dc98c8e4c27d8192ae6e605566c5daa981d9b6e8f8fc1e23a9ce3e311a13` |
| 23 | `def` | [currentMajorGateName?](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/currentmajorgatename.md) | 193 | `declaration-track:891f7f3f3dcde59f88cd25e731a834760cde4614bf0ec2826da8d9f340cf6e29` |
| 24 | `def` | [certificateOnlyDeclarationNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/certificateonlydeclarationnames.md) | 266 | `declaration-track:3bb4958ca69822255277c38e38b2a6a5138634313a25c6483381c2514d47c3be` |
| 25 | `def` | [certificateAccessorSuffixes](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/certificateaccessorsuffixes.md) | 285 | `declaration-track:8c85949024fd644589000c4b0531d2e23cc3676b14593a1dedcbde55ce4f078a` |
| 26 | `def` | [declarationNameIsCertificateAccessor](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationnameiscertificateaccessor.md) | 298 | `declaration-track:6a7fd70476fa74ace55d64bc80eb3bb06be7844fba109a23d6bf54a103fc4a6b` |
| 27 | `def` | [declarationNameIsCertificateDestructor](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationnameiscertificatedestructor.md) | 301 | `declaration-track:1d39090a83c925229512e832711ed943d51138ff7e5cd4b33286a7ccd8cd5c8c` |
| 28 | `def` | [theoremFacingWhitelistNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremfacingwhitelistnames.md) | 316 | `declaration-track:b53aaaa61d6f941921a80a7f16642b17141d2e003435e3a44de9f1e4f22abfa5` |
| 29 | `def` | [mathematicalTheoremFacingWhitelistNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/mathematicaltheoremfacingwhitelistnames.md) | 318 | `declaration-track:7fe45b0759b2143355c3f1120c4aa1ffec260ab7bca85f79cad2b54dcf769755` |
| 30 | `def` | [implementationTheoremFacingNamePatterns](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/implementationtheoremfacingnamepatterns.md) | 330 | `declaration-track:9ae0a61624db76529ac190d37c5ed64a1b8db0c6a502c6efd97375cb147a6668` |
| 31 | `def` | [implementationTheoremFacingNameSuffixes](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/implementationtheoremfacingnamesuffixes.md) | 338 | `declaration-track:3566ba5fa36e10a2f59f1c2517e057264a57f6536d066fb249c56f2e7a527d8c` |
| 32 | `def` | [declarationNameHasImplementationTheoremFacingPattern](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationnamehasimplementationtheoremfacingpattern.md) | 346 | `declaration-track:dffe5c0f0c672adb5137fb7429f11c0928090b1ce7e1e173e768dce870f5e752` |
| 33 | `def` | [descriptorOnlyPrismaticSectionPrefixes](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/descriptoronlyprismaticsectionprefixes.md) | 353 | `declaration-track:cae5e91fd14e83e2635c985cf900560018942d8ab486e083cbccbe80b9e0f677` |
| 34 | `def` | [declarationNameIsDescriptorOnlyPrismaticSectionInfrastructure](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationnameisdescriptoronlyprismaticsectioninfrastructure.md) | 363 | `declaration-track:fd35290b2c1c2ea70fb2ea86f64a891060edee7d4695818c2d0446cd4d51b63d` |
| 35 | `def` | [declarationNameIsCertificateGate](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationnameiscertificategate.md) | 368 | `declaration-track:113c1a3d3c9203ee07bda70356e229fa38d55b1412503e02c52cdbc895fec767` |
| 36 | `def` | [declarationProofBoundaryClass](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationproofboundaryclass.md) | 380 | `declaration-track:6388570f8cfe3ec6a5577d475c3e58e44047597c789ee510efa2bca336584d3e` |
| 37 | `def` | [declarationIsTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationistheoremfacing.md) | 402 | `declaration-track:45d047d0de1766f54106e95bf0522445fa2467807ff7a85a56a453a522799f61` |
| 38 | `def` | [declarationIsMathematicalTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationismathematicaltheoremfacing.md) | 405 | `declaration-track:04f0d7d7abc262cdc530e40fa5713e8aeb9f6cb112b893a6d52c98d2953ef45e` |
| 39 | `def` | [declarationIsImplementationTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationisimplementationtheoremfacing.md) | 409 | `declaration-track:60fd7d5b243f6d4c4e2cab577441dc8a590460e2724e28bd0ca420a10d0e0d53` |
| 40 | `def` | [forbiddenAuthorityReasons](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/forbiddenauthorityreasons.md) | 413 | `declaration-track:2b917af8397de414f2a1949cb0cc4ce49537c8c9622a6995c160808b976e17f6` |
| 41 | `def` | [theoremConeAuthorityJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremconeauthorityjson.md) | 431 | `declaration-track:bcf98061e7f22a1f7ed77ae33b7f33f601c6d9a499820af4aae6a6e1a089fe59` |
| 42 | `def` | [declarationConeLabel](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationconelabel.md) | 442 | `declaration-track:3c810b8c578b48d529628c57ea9105cd9daa29a8b81e7e7a01ae932407193292` |
| 43 | `def` | [sourceFileHintForDeclaration](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/sourcefilehintfordeclaration.md) | 466 | `declaration-track:c7f71e9b84bd9d9d8d2633a14ee3b03024d0a3e77b88a4dfbfe48a6e1e62ce1f` |
| 44 | `def` | [sourceLineHintForDeclaration](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/sourcelinehintfordeclaration.md) | 486 | `declaration-track:952fa7ea69f1c79a0ec0e495c912da63ae720e9fe2ad9b802b2a5eff4dcd0386` |
| 45 | `def` | [declarationCertificatePackageNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationcertificatepackagenames.md) | 508 | `declaration-track:2bc7567b5e8197d15030894bfd603769df6287cae4291ea02c62f3462ac266ba` |
| 46 | `def` | [declarationAnnalsPageJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationannalspagejson.md) | 516 | `declaration-track:bb5e2a53dbf26d0d1fe7099144a0c414b1ecdc191a735af989e21bf137e17332` |
| 47 | `def` | [currentMajorGateManifestJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/currentmajorgatemanifestjson.md) | 559 | `declaration-track:f5980515afb85fb86e521f868a00c3a21632b0e8f99d666a98f038cc3d3dca0f` |
| 48 | `def` | [categorizedMajorGateManifestJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/categorizedmajorgatemanifestjson.md) | 562 | `declaration-track:2b0ed7df5e3c9882770f8ea97f59a2665fcfeb2be62f708adc373a923672ba21` |
| 49 | `def` | [constantInfoJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/constantinfojson.md) | 569 | `declaration-track:1367f2696257e2841cebbe0cd92f33fc2ac57e5b4979a74e47ac0c76026a5d7b` |
| 50 | `def` | [isSurfaceDeclaration](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/issurfacedeclaration.md) | 593 | `declaration-track:9e693e5c2d70a47fae3d0c598b3aae7c587aececc6b9f0071a4c811a4d0f6886` |
| 51 | `def` | [declarationLess](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationless.md) | 596 | `declaration-track:ebebde5eec04594b7b69151963f3b15f68dbaff174b4a35a1ebc82e7c467c11d` |
| 52 | `def` | [surfaceDeclarationsJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/surfacedeclarationsjson.md) | 599 | `declaration-track:6fb4cb0a299e53a539e091694c2da44adb2fff9010aea8ddf6bd5495555d0e88` |
| 53 | `def` | [manifestGateSelfCheckFailures](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/manifestgateselfcheckfailures.md) | 604 | `declaration-track:ca805a5daa216707ad66fb6805740cdd59957f14e963cf29f277ee81dfadc8a6` |
| 54 | `def` | [theoremObligationForbiddenSubstrings](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremobligationforbiddensubstrings.md) | 612 | `declaration-track:c700f66debdab782b2f162c6d3e8e00e0e74ed568bfcad34d2a775981b95b496` |
| 55 | `def` | [theoremObligationPatternHasForbiddenAuthorityLeak](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremobligationpatternhasforbiddenauthorityleak.md) | 625 | `declaration-track:be30984ff686d47421761cf4ae96c926205ea3786bcaf1ad1c87ff4eeb7d3d5d` |
| 56 | `def` | [theoremObligationAuthorityLeakFailures](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremobligationauthorityleakfailures.md) | 629 | `declaration-track:b75a5870148d1d8a3b8555bff18466cb669e187e5564858ad64f8cb47642d5a4` |
| 57 | `def` | [theoremFacingDescriptorSectionForbiddenNames](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremfacingdescriptorsectionforbiddennames.md) | 632 | `declaration-track:1d5653f31d49414c76fc091a56ee0c044fc3a06432121c0e015fa10f43ee743d` |
| 58 | `def` | [declarationMentionsForbiddenDescriptorSection](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/declarationmentionsforbiddendescriptorsection.md) | 641 | `declaration-track:b8bf640a60fdf9f78238a77925edcee96d8d9096e66bdc2f4e62fc22f64bf37b` |
| 59 | `def` | [theoremFacingDescriptorSectionFailures](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/theoremfacingdescriptorsectionfailures.md) | 649 | `declaration-track:4358c8d7e3bd19dc80d18b9e9a5010fa9ca9ab3f2cfdb126c3f35f5f5fc27c33` |
| 60 | `def` | [mathematicalTheoremFacingImplementationPatternFailures](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/mathematicaltheoremfacingimplementationpatternfailures.md) | 660 | `declaration-track:d22a9e9d731297b62f09790e839401c1341d49f0675634fa21632322532e5c3f` |
| 61 | `def` | [nameFromDottedString](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/namefromdottedstring.md) | 672 | `declaration-track:b0c4dfe43f66e493abac8b78a5a7c326fe69cb87766075f8836704f9dcdd5265` |
| 62 | `def` | [mathematicalTheoremFacingWhitelistFailures](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/mathematicaltheoremfacingwhitelistfailures.md) | 675 | `declaration-track:3f560cad346585adef2e1b458d11d93296f849956337c94750bc0fb2c83281cf` |
| 63 | `def` | [ensureManifestGatesMatchExportedDeclarations](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/ensuremanifestgatesmatchexporteddeclarations.md) | 699 | `declaration-track:b63c78890dddfc961130bf6dbe053926a3cf1b087d5de250d4c29191431afc8d` |
| 64 | `def` | [envExportJson](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/envexportjson.md) | 727 | `declaration-track:9cb810015adf35014ca7c1984b5ddffb6bca16873780949715fa1b25a932cb5a` |
| 65 | `def` | [main](../../../../GeneralTopology/ExportNamespacedEdition2.lean/declarations/main.md) | 751 | `declaration-track:522eb00639694094cb2015a6956acb713b6080cbab5a27dea961bb49b5cbc88c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39a2d26313b5f802c47bb86dd3f32fa4c10fd01a2a28cd04648b59b90bf0e419 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
