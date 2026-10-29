# Verification target: Exactly Once Raster

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e24e015c2a0f629bd9a679ce140557935bf34ac3",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ExactlyOnceRaster.lean/index.md) · [Full source](../../../../Combinatorics/ExactlyOnceRaster.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e24e015c2a0f629bd9a679ce140557935bf34ac3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RasterCell](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/rastercell.md) | 23 | `declaration-track:61b2bfa282f64d0d99213cc80b48f084997be17925de770c60160a6ab6276769` |
| 2 | `structure` | [RasterSection](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/rastersection.md) | 30 | `declaration-track:88b286d62ff5d9f059750cf80d2fa0b76e4e3008e57a825a7e626250c0b86864` |
| 3 | `theorem` | [ext](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/ext.md) | 36 | `result-track:363123100d44bf96f2dabb29dc908696eb6f0baa83736326c633402133e75067` |
| 4 | `inductive` | [DecisionAvailability](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/decisionavailability.md) | 49 | `declaration-track:ff67a7b0af75f5868c0985b9035b31fb3e39ebfa31a18b1298eb133a7a7e3b57` |
| 5 | `structure` | [ValiditySection](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/validitysection.md) | 54 | `declaration-track:c4e909b38e92b9d4e5ff388c0052841c8541dd511879a1610a34c1031f49df4e` |
| 6 | `structure` | [EventLedger](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/eventledger.md) | 58 | `declaration-track:45fb19e6dbcd384154176c4488135aade1e257a387017349289b18e5ac3fdd16` |
| 7 | `theorem` | [ext](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/ext-source-edition-3.md) | 64 | `result-track:b99a87c35a597078c3c849bd8fd8eb9914e9da9a176388585271769e6ef3a7dc` |
| 8 | `structure` | [ConditionalEvent](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/conditionalevent.md) | 77 | `declaration-track:ee7a96c341b15441c56b8b9abbf7b458895d934ec9f396266e3deac656014ebf` |
| 9 | `structure` | [RasterState](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/rasterstate.md) | 86 | `declaration-track:8dd2c58b3b47350be8ad9d667352d8899210fc8026ce02f84cbb7512cf70ce32` |
| 10 | `theorem` | [ext](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/ext-source-edition-2.md) | 93 | `result-track:5ea0af3c11ac1f097c04afbeb7b96e51bc97d430bf7619b442ba6e9cc5be7789` |
| 11 | `def` | [ConditionalEvent.fires](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/conditionalevent-fires.md) | 110 | `declaration-track:632794900acd28497ce7454602d81383ee032557838f2fa890e695ee10d67646` |
| 12 | `def` | [updateEventLedger](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/updateeventledger.md) | 116 | `declaration-track:b1e72b60a0c5339cd8ad14567cc49be10384ef55b25e9ef9bb2786005f80f314` |
| 13 | `def` | [applyToggle](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/applytoggle.md) | 134 | `declaration-track:0d50a6ffdf3f89adc5d76d25d8af56d287fd35f465928d11bb5282684b627917` |
| 14 | `theorem` | [false_condition_preserves_bit](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/false-condition-preserves-bit.md) | 153 | `result-track:3fcdee17ad1434d3538bc66e2f389f79a8da45b94c168a0c99bf95c89602454d` |
| 15 | `theorem` | [seen_event_preserves_bit](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/seen-event-preserves-bit.md) | 168 | `result-track:99f74bbbdd3c6734548f5fbabe326a643b3b7919a160f64bde5fabe2098ed72a` |
| 16 | `theorem` | [true_unseen_condition_flips_bit](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/true-unseen-condition-flips-bit.md) | 182 | `result-track:bb532abe8a89a4ec1c542f43477ada326c438e8ea0a91f7d376ec5a05476a5b5` |
| 17 | `theorem` | [true_unseen_event_is_recorded](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/true-unseen-event-is-recorded.md) | 194 | `result-track:3b02f564b6f117d178c596ba30d60b10c0b1da91d7b42e203cb4695d33a8ff49` |
| 18 | `theorem` | [toggle_replay_idempotent](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/toggle-replay-idempotent.md) | 206 | `result-track:2ba44ee19469450f342c2709bd79e39cb0cfb85afbc059218ebabc86ac574fd1` |
| 19 | `inductive` | [VariableClass](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/variableclass.md) | 223 | `declaration-track:2ad6ca8283a3c9f51a84696d92dbb47e5be09ca84627a68396804586e4296dd2` |
| 20 | `structure` | [FrozenAssignment](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/frozenassignment.md) | 229 | `declaration-track:8e5fae508410b5362d153a7e057a1770659c414715deb91f24b9623b55bcd5aa` |
| 21 | `inductive` | [Literal](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/literal.md) | 233 | `declaration-track:7969dee978ecac7a7c31c38f02ebbab85709ddd614c8f904e8a78f880446033b` |
| 22 | `abbrev` | [Clause](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/clause.md) | 238 | `declaration-track:15af20dab5408d8c8d76b3a9de255db038e5ee4189649d819ad3d87f2da090c9` |
| 23 | `structure` | [BoolFormula](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/boolformula.md) | 241 | `declaration-track:4a6d3af7274f2d920baa9c5628ce63cdd63f7579b7ff81bae4dbeb15463bfc5c` |
| 24 | `structure` | [CanonicalCNF](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/canonicalcnf.md) | 245 | `declaration-track:a5da482b03d7710d0faa63bfe1329b57ef432e9cee2baea57fcc7ad77169cc47` |
| 25 | `structure` | [SatModel](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/satmodel.md) | 251 | `declaration-track:ad2be3df513ab8bf6b0e5f753627d408107d7d3f49bba16a026e5ec44992f7fb` |
| 26 | `def` | [Literal.eval](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/literal-eval.md) | 254 | `declaration-track:ed741c7202122eb171884f4b2628a4a28b5a7a10ec6852fa8ca800ba15815094` |
| 27 | `def` | [Clause.eval](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/clause-eval.md) | 260 | `declaration-track:eb1dc23ddf2db53d05accb842c54357f59e94f39b4a1c78371b12f295d7e9932` |
| 28 | `def` | [BoolFormula.eval](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/boolformula-eval.md) | 265 | `declaration-track:360dc6c00f01dfadb4556ffded1167973068a1af6ab7d5dd718c60c35ccf74b4` |
| 29 | `def` | [FrozenAssignment.PreservedBy](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/frozenassignment-preservedby.md) | 270 | `declaration-track:eb3de00553736decfe28e75b60db134e6b74007c18ac3148fa5cfa0584f63ca9` |
| 30 | `structure` | [ValidatedSatModel](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/validatedsatmodel.md) | 278 | `declaration-track:5f48bb46dd9ebd5951412f31bd73122fe3f64ca198735681d5a249181cb26cc8` |
| 31 | `def` | [validateSatModel](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/validatesatmodel.md) | 287 | `declaration-track:9b49b4734827d9a7735b50d07d362f156e3362ff21f6dafbbf87fca5f5c5f6a8` |
| 32 | `theorem` | [frozen_variables_unchanged](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/frozen-variables-unchanged.md) | 295 | `result-track:a8222842649e4a4d468df49b9825e6a55534c886168f201b851430aaf0dc9d31` |
| 33 | `theorem` | [validated_model_passes_fixed_validation](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/validated-model-passes-fixed-validation.md) | 302 | `result-track:039ecca818caf34b81b8e579ca42299336b1803aa04e78052d99dea914485739` |
| 34 | `structure` | [UnsatCertificate](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/unsatcertificate.md) | 310 | `declaration-track:8a9af79aa8bb00621e774fff434baf1dcde4288758e15a947ea1fd6880969ef0` |
| 35 | `def` | [validateUnsatCertificate](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/validateunsatcertificate.md) | 318 | `declaration-track:5c93be216b765adc7c46f8831d56d3e6456d60b10dc526c6911f2a11e884435b` |
| 36 | `theorem` | [unsat_certificate_passes_fixed_validation](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/unsat-certificate-passes-fixed-validation.md) | 324 | `result-track:e2c8b9e0ce5961770e21d67a5f5515f15d032cfdd0fa1ab560a1ecde51753636` |
| 37 | `inductive` | [SatStatus](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/satstatus.md) | 330 | `declaration-track:5dcdb12786165ca72c5f9f0e0e33f6089acce0a9e50bef07fc3ab306095eb156` |
| 38 | `structure` | [SatReceipt](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/satreceipt.md) | 337 | `declaration-track:6132568a72e262e8745202af8b7811437adfe0d126e769ae4fd5275130850fc4` |
| 39 | `inductive` | [SatResult](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/satresult.md) | 346 | `declaration-track:8bde5e6184a99e3d3173550a4308a754438464ade761ead3ea11aebf44244b2d` |
| 40 | `structure` | [CanonicalModelSelector](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/canonicalmodelselector.md) | 368 | `declaration-track:400307a214be19d6229c7632637a08f392f46713036b1252f4f64115dad76129` |
| 41 | `def` | [canonicalSatModel](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/canonicalsatmodel.md) | 381 | `declaration-track:9384c909c2f0830f32382ba953dadac71f9ada8fe9f9833fb235c3a45a1d56a1` |
| 42 | `theorem` | [canonical_model_deterministic](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/canonical-model-deterministic.md) | 388 | `result-track:5a93c8ad178141efea2c201d0606b2286ee93443e7ee5170d48cdb260907190e` |
| 43 | `def` | [xorCNFHolds](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/xorcnfholds.md) | 397 | `declaration-track:e3ee9a69e139b9fefd997d510a10a6ba22efd369d8cbdb96468095e527277ce8` |
| 44 | `theorem` | [xor_cnf_correct](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/xor-cnf-correct.md) | 403 | `result-track:d9e268a80af1e5b637223a6f04fd054b5059f07d35142f5e5888b3fc2c48ba29` |
| 45 | `inductive` | [SatTransitionProposal](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/sattransitionproposal.md) | 410 | `declaration-track:01d5f3032bd354b7685d2646c0119d45da1e04e4986e7ae295721802c1f5318e` |
| 46 | `def` | [evaluateSat](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/evaluatesat.md) | 414 | `declaration-track:ef70877bdf492aaadd459ae49e161ab9f1735947e39ea701acdc93f637130b59` |
| 47 | `theorem` | [unsat_preserves_current_state](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/unsat-preserves-current-state.md) | 430 | `result-track:dd7faaf951230860284d9760116b9a8f3b34a8f7715b982ebbb7dadb208fdb57` |
| 48 | `theorem` | [unknown_preserves_current_state](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/unknown-preserves-current-state.md) | 442 | `result-track:3a733ccb18fff3a94d32a7f1e86f301f026a24cdd89318abd4531bc4c828483c` |
| 49 | `theorem` | [stale_preserves_current_state](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/stale-preserves-current-state.md) | 453 | `result-track:a31d2ff0c9257e0ff2ca6b8bd72296b0a60d67a4dce7d55f34a0e970a9fc6213` |
| 50 | `theorem` | [sat_does_not_create_authority](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/sat-does-not-create-authority.md) | 465 | `result-track:b542212bbadf53f01e74c8fd214de0ecd6308247527d478a8e3b4a3051d138e0` |
| 51 | `theorem` | [raster_does_not_create_authority](../../../../Combinatorics/ExactlyOnceRaster.lean/declarations/raster-does-not-create-authority.md) | 472 | `result-track:2b00603465c65c0a6e130a9d3f71252a79947d5963b35784c29c3382331e900d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd2fe9f019bf77c6a309452923e3e6307851b22c1dcb15cb0989c1d38665a322 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExactlyOnceRaster/Variant5c4d5660eed22f5a6433103796af5822dba7bf84f87b49f548524cb8762a14b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
