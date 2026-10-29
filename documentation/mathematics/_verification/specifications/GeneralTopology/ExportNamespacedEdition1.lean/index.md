# Verification target: Export Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1187dd774103e20c9487da1b53e679c6ebc5ac94",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ExportNamespacedEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/ExportNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1187dd774103e20c9487da1b53e679c6ebc5ac94`.

Source path: `GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Surface` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Audit` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.AST.DeclarationGraph` — import line 9; external provider; requires a separately pinned dependency.
- `Surface.AST.ModuleGraph` — import line 10; external provider; requires a separately pinned dependency.
- `Surface.AST.Trusted` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jsonEscapeChar](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/jsonescapechar.md) | 22 | `declaration-track:cb394e17c5e07a2d662d516a164ac416966e5683885b2109de34a494ea0969fa` |
| 2 | `def` | [jsonString](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/jsonstring.md) | 30 | `declaration-track:7e3b3de20361c5f942b6ccf4c0c241403924f3c6c3ec49e2b00f0befb704ff49` |
| 3 | `def` | [jsonBool](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/jsonbool.md) | 33 | `declaration-track:afe639b9df73dd04c9de8a033ee0bcc8eb6974c1d40b41d1c31257d2a9f67ee1` |
| 4 | `def` | [jsonStringArray](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/jsonstringarray.md) | 36 | `declaration-track:cd9984d58dbc605c4156999a2dca322da0221f76768ae943bde7a69743292e17` |
| 5 | `def` | [jsonStringOrNull](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/jsonstringornull.md) | 39 | `declaration-track:ad5aacfb7970533419475339d8534cd8b24549594cbfba945d97d2516e102fc6` |
| 6 | `def` | [uniqueSortedStrings](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/uniquesortedstrings.md) | 43 | `declaration-track:78087cb48de06a1d22207efd05c467eea16a0a4877f07c0d4ab4bbd28666e2fa` |
| 7 | `def` | [constantKind](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/constantkind.md) | 46 | `declaration-track:7a061c66019af4c19158e3dc10dd52c90639750ac46d15c011b8a962cb09cca1` |
| 8 | `def` | [proofStatusForConstant](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/proofstatusforconstant.md) | 56 | `declaration-track:7db97ab984460ef9baeb0c585ee7a3697cec072e41bfe6463a4f9354e383343f` |
| 9 | `def` | [axiomExternalStatus](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/axiomexternalstatus.md) | 64 | `declaration-track:16d776b75ffef62115e6898ffca60ec526f654c3efe0040f7131654a809155ec` |
| 10 | `def` | [expressionDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/expressiondependencynames.md) | 72 | `declaration-track:5c0373e678699f00245fb9864e14dafba01bc80de05335cacb75f9fcb7510814` |
| 11 | `def` | [constantDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/constantdependencynames.md) | 75 | `declaration-track:6c627e0f2d19a1d3f2a4550f8190b7b08772e1d5c58283884a3661dfbd6e39c2` |
| 12 | `def` | [surfaceDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/surfacedependencynames.md) | 84 | `declaration-track:38c3c114165660b1c0643d76d991dbaa327687b2c337c801433c18797374ca34` |
| 13 | `def` | [importedDependencyNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/importeddependencynames.md) | 87 | `declaration-track:7e0bb4f0bc8ae3e9e34c56655f7b1c8a79e8b946bc19377da7089156788e4ea0` |
| 14 | `def` | [prismaticTheoremSeedGateNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/prismatictheoremseedgatenames.md) | 90 | `declaration-track:e2ab79397e3b583f1fd7d95a8360a39093c4c8e346364bf0860a14e5ccf2081b` |
| 15 | `def` | [majorTheoremObligationPatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/majortheoremobligationpatterns.md) | 97 | `declaration-track:89ecbb3e7862231a70d3b26144ad7ac74b7a5e6af7b3a771bf989f5f394459c5` |
| 16 | `def` | [majorConstructionInputPatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/majorconstructioninputpatterns.md) | 109 | `declaration-track:2e5bdbeb9e1425d7e424d4c614b4cab952e32993234d9f4c5f222e0216cd128b` |
| 17 | `def` | [finiteStructuralInputPatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/finitestructuralinputpatterns.md) | 121 | `declaration-track:93575cbf0c6a3bcfa2a04c3f28f765f852a9aeded992d2db0385614d062cf726` |
| 18 | `def` | [readinessDashboardPatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/readinessdashboardpatterns.md) | 126 | `declaration-track:87f2c811ab2d86c867f4bdc8316852cd786aa9d7bacf5bfcee68e71d127df314` |
| 19 | `def` | [certificateGatePatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/certificategatepatterns.md) | 131 | `declaration-track:1a3619359e0646d0f307363386db2ffef34ada0e630695bf0e7229d32e785c9d` |
| 20 | `def` | [currentMajorGatePatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/currentmajorgatepatterns.md) | 165 | `declaration-track:a00949389143641b0908dca18db7d6f8aca92e5f7d1411050a59920ea8b47c82` |
| 21 | `def` | [manifestGatePatternMatches](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/manifestgatepatternmatches.md) | 172 | `declaration-track:17b190ee8153b65526c857679231cbfb14b82e01f6e7ee820746a7f47ca373c6` |
| 22 | `def` | [majorGateAuthorityClass?](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/majorgateauthorityclass.md) | 175 | `declaration-track:c56e36cf8e328b87d46fc4f412a8592276f9c1f1893f09de25d642db1d2882d0` |
| 23 | `def` | [currentMajorGateName?](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/currentmajorgatename.md) | 194 | `declaration-track:fbbd025fd1a268c71cdab4f230a71a8cd9375dd3282750f248f0db50c2bb5f1d` |
| 24 | `def` | [certificateOnlyDeclarationNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/certificateonlydeclarationnames.md) | 267 | `declaration-track:66774ab7105a0287325f1164297ece315959971e05e40f9623c899785a1e5fdb` |
| 25 | `def` | [certificateAccessorSuffixes](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/certificateaccessorsuffixes.md) | 286 | `declaration-track:c92e7bc22b76c11e09056a2fce206d26fd8c265d15e11b0bb564fa9a3e784707` |
| 26 | `def` | [declarationNameIsCertificateAccessor](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationnameiscertificateaccessor.md) | 299 | `declaration-track:273d493c646f3ee95a491977d9cf4238613b7c18ae552148ff9b1d98adabe365` |
| 27 | `def` | [declarationNameIsCertificateDestructor](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationnameiscertificatedestructor.md) | 302 | `declaration-track:116a9f66e3561548fc0c8b88341afd0b8e075d32c615ec06325d5a51c4b76a0a` |
| 28 | `def` | [theoremFacingWhitelistNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremfacingwhitelistnames.md) | 317 | `declaration-track:1edcc72afdaf38f31b46f03d431983a7933e38111c7b26b52cd191cc69d9851a` |
| 29 | `def` | [mathematicalTheoremFacingWhitelistNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/mathematicaltheoremfacingwhitelistnames.md) | 319 | `declaration-track:9542ed1655760529bea9d7fc97bf85da975cb4a0260addd9f879ca479e77735a` |
| 30 | `def` | [implementationTheoremFacingNamePatterns](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/implementationtheoremfacingnamepatterns.md) | 331 | `declaration-track:4c98d5a3a60c89078b0fe37ee46e30de651d2db0ff1fb8eb91a32f17f935b9d9` |
| 31 | `def` | [implementationTheoremFacingNameSuffixes](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/implementationtheoremfacingnamesuffixes.md) | 339 | `declaration-track:829b063466df3a3d11960356cf9e1629e6101da4a27809364d247e3a05b4dd8a` |
| 32 | `def` | [declarationNameHasImplementationTheoremFacingPattern](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationnamehasimplementationtheoremfacingpattern.md) | 347 | `declaration-track:d0c94094bbfb0df91d969a755cde0a92c11f53b7dab14bc5f04ba7c0778807a6` |
| 33 | `def` | [descriptorOnlyPrismaticSectionPrefixes](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/descriptoronlyprismaticsectionprefixes.md) | 354 | `declaration-track:d60b689cd881364453a918801cbc72c611fb7f95d64f84e73fe28b0a70e7872f` |
| 34 | `def` | [declarationNameIsDescriptorOnlyPrismaticSectionInfrastructure](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationnameisdescriptoronlyprismaticsectioninfrastructure.md) | 364 | `declaration-track:90cb51274532fdbdbde7ffc8768bfb840ed39cd64f06d1430ae15b622b7e1e87` |
| 35 | `def` | [declarationNameIsCertificateGate](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationnameiscertificategate.md) | 369 | `declaration-track:c59b765da4c71f24522625cca6b4a73153a8367e34046faffb33d262170223bf` |
| 36 | `def` | [declarationProofBoundaryClass](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationproofboundaryclass.md) | 381 | `declaration-track:e5f8b25fcb0fdcc816f767196974559d1181a3b431f22178fde786feb5689a9f` |
| 37 | `def` | [declarationIsTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationistheoremfacing.md) | 403 | `declaration-track:361abb49cd1d4280d2c1d090f054844405abf0977baf460e627aa2e4c4bb8f07` |
| 38 | `def` | [declarationIsMathematicalTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationismathematicaltheoremfacing.md) | 406 | `declaration-track:ed27c5bed8cfb146189983f9f0f30c0dca6e858abf7df1a4392afc981488aa05` |
| 39 | `def` | [declarationIsImplementationTheoremFacing](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationisimplementationtheoremfacing.md) | 410 | `declaration-track:a26e2df138f0f8b4124687e9a4e203c46a167f0b00897019d24004ad115010a5` |
| 40 | `def` | [forbiddenAuthorityReasons](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/forbiddenauthorityreasons.md) | 414 | `declaration-track:4b4ffae0f2111f0bc04ed30d264c899cb8d7b5e87a88704ef5c79c93bd67f165` |
| 41 | `def` | [theoremConeAuthorityJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremconeauthorityjson.md) | 432 | `declaration-track:acb851906a2d0112219634c02ecb7c435b5613f05f6deef509480ec532e2188f` |
| 42 | `def` | [declarationConeLabel](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationconelabel.md) | 443 | `declaration-track:c178c831d4acbd547f87cf7c240002fde750e8bebb575b85993cafcbadd2b740` |
| 43 | `def` | [sourceFileHintForDeclaration](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/sourcefilehintfordeclaration.md) | 467 | `declaration-track:ea38c50088e677158c152db084ba3589fb66705090a04f3030f52633a9072d97` |
| 44 | `def` | [sourceLineHintForDeclaration](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/sourcelinehintfordeclaration.md) | 487 | `declaration-track:83c441897e45c9d21fb29e4e8a2726bbefecb91342402424911aed5143581ce9` |
| 45 | `def` | [declarationCertificatePackageNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationcertificatepackagenames.md) | 509 | `declaration-track:c08a34214d320273c91d69cc172d83f22723f341677a46bea3e55f22ed63f9a7` |
| 46 | `def` | [declarationAnnalsPageJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationannalspagejson.md) | 517 | `declaration-track:71db66a8d683d99e0918cb9fdab2b5c8d2c446180c564e4bfafa2ee20456338d` |
| 47 | `def` | [currentMajorGateManifestJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/currentmajorgatemanifestjson.md) | 560 | `declaration-track:b4aadd77e02467a7cc7eb71d4c096dc6a2c32a6bf7a580209fe47937667f5e95` |
| 48 | `def` | [categorizedMajorGateManifestJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/categorizedmajorgatemanifestjson.md) | 563 | `declaration-track:5521decd4d33f50cbdd84a8b46fc2fb8ced51619d1f6d6220a81a340679d3300` |
| 49 | `def` | [constantInfoJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/constantinfojson.md) | 570 | `declaration-track:710ade1b98fb0694af2f8faf5c348f42090139b6df0e20aa51d8a19014ec83f2` |
| 50 | `def` | [isSurfaceDeclaration](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/issurfacedeclaration.md) | 594 | `declaration-track:de36adb40a4e8da6d9e33850903be037bf78c979fff8a85577c2712e0a709b61` |
| 51 | `def` | [declarationLess](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationless.md) | 597 | `declaration-track:74b4c91f0381f696ce8ea86c06569c307cc53bc4f8d9d906490c26b979f2729e` |
| 52 | `def` | [surfaceDeclarationsJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/surfacedeclarationsjson.md) | 600 | `declaration-track:05cfb7bb9e20dbd7282e2aff5836e8aa6c2ff2f44cbe50e37bc4fc92b90ed2e2` |
| 53 | `def` | [manifestGateSelfCheckFailures](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/manifestgateselfcheckfailures.md) | 605 | `declaration-track:d4d46d8a6256d014ebbba0b9ec50d96e4198ba3db7a931f38bd855e899376ad5` |
| 54 | `def` | [theoremObligationForbiddenSubstrings](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremobligationforbiddensubstrings.md) | 613 | `declaration-track:be4f1342c078c70e6b2a8cf6fc76f47835fd2603125cfb5601f9fd43ad5075df` |
| 55 | `def` | [theoremObligationPatternHasForbiddenAuthorityLeak](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremobligationpatternhasforbiddenauthorityleak.md) | 626 | `declaration-track:bbb6561a92af27c4901d1a9307d2a40dc4725625563472b0280d081902ba16a4` |
| 56 | `def` | [theoremObligationAuthorityLeakFailures](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremobligationauthorityleakfailures.md) | 630 | `declaration-track:37c6315a686728c959eb0c46a7f8d4577481b568a71e06e9d555096be941c0d5` |
| 57 | `def` | [theoremFacingDescriptorSectionForbiddenNames](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremfacingdescriptorsectionforbiddennames.md) | 633 | `declaration-track:8724660c6458bbc7ec16cb22bfc72344cec7d663d77d6976ab17ead8108a58ef` |
| 58 | `def` | [declarationMentionsForbiddenDescriptorSection](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/declarationmentionsforbiddendescriptorsection.md) | 642 | `declaration-track:0510c4150925878d91fea9c81ce0e6cdb84de5d2d96558db48cd90690e6c7ab2` |
| 59 | `def` | [theoremFacingDescriptorSectionFailures](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/theoremfacingdescriptorsectionfailures.md) | 650 | `declaration-track:91e4af29ed358bc3d601cf20a98d8c6ff4081635d7c3a6f2a5db7c9380773f68` |
| 60 | `def` | [mathematicalTheoremFacingImplementationPatternFailures](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/mathematicaltheoremfacingimplementationpatternfailures.md) | 661 | `declaration-track:9df0188113692a0899036e8f5e49866f3b7d392286ace142a3cca8acd4604b9d` |
| 61 | `def` | [nameFromDottedString](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/namefromdottedstring.md) | 673 | `declaration-track:1fb727105a0d4d475f301d3529fbb102a246bb0eb918e3b37fd856a97dea8271` |
| 62 | `def` | [mathematicalTheoremFacingWhitelistFailures](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/mathematicaltheoremfacingwhitelistfailures.md) | 676 | `declaration-track:9882bd08e4268429d0bef6951850dc9f0b71bcc9a98d3d5edb3ac53ab30f514f` |
| 63 | `def` | [ensureManifestGatesMatchExportedDeclarations](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/ensuremanifestgatesmatchexporteddeclarations.md) | 700 | `declaration-track:6009b20721b98255bf1773c72b98e0ff8ab60798904d94bd726390a9cd0390e0` |
| 64 | `def` | [envExportJson](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/envexportjson.md) | 728 | `declaration-track:e86b7823ed94e4979051713a23f952796e410b68041a4abf00a67cb0c1241a9b` |
| 65 | `def` | [main](../../../../GeneralTopology/ExportNamespacedEdition1.lean/declarations/main.md) | 752 | `declaration-track:d1cc60781271bcd1881a32f1e43583365632211f3bba9e9148020cf99ee4987c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1b0475f621d6525f3e1228506747fb7b9378cb7401d2f568497bb6b1bc3dbdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Export/Variant83d06fc6a0f8bd98922c9515d3c9407bc113c9873e4db69c15ab7eca6ff2b8d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
