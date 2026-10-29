# Verification target: Reflective Agents

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a8b614abe05adbaa4806538bf401a968bfec09",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ReflectiveAgents.lean/index.md) · [Full source](../../../../GeneralTopology/ReflectiveAgents.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a8b614abe05adbaa4806538bf401a968bfec09`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.NeuralGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `CordTheory.InterpreterExactness` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReflectiveEvaluatorTower](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/reflectiveevaluatortower.md) | 28 | `declaration-track:71b91eca922dfe1fbff73cdeb8758c8a7f7c5b17930488eadc119f488a5f1b07` |
| 2 | `theorem` | [eval_quote](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/eval-quote.md) | 37 | `result-track:c091792407363785c730bd581fe38967de8f4087ef92df24067dc603660d315b` |
| 3 | `theorem` | [quote_injective](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/quote-injective.md) | 44 | `result-track:8ae8b507248372799d3054dadee3f801b78e890017958cd073313687bbb71d5e` |
| 4 | `theorem` | [quote_strictly_raises](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/quote-strictly-raises.md) | 53 | `result-track:3c2636bcf8b4e349e891a059bcbe82ca623deefdf993817594a9b83e19b0bfed` |
| 5 | `structure` | [ExactTowerGradePolicy](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/exacttowergradepolicy.md) | 63 | `declaration-track:402d750766b13bd63f1046cc1b0dc45b4e6525956134945362fc83dc8943d480` |
| 6 | `structure` | [ExactReflectiveEvaluatorTower](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/exactreflectiveevaluatortower.md) | 82 | `declaration-track:c258bb96b76f1660537d962ab56bb2afe26dd80bf53adb3aee3140054996601c` |
| 7 | `def` | [asInterpreter](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/asinterpreter.md) | 165 | `declaration-track:df7fb372fbd004f9b8d76e3423fab93c6d73153b6ba51047234b52d1e98d3417` |
| 8 | `def` | [inducedEffectiveInverse](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/inducedeffectiveinverse.md) | 181 | `declaration-track:14092405f110103d9e9e5084fa6a682a50d0ec6246ce39026081b170323bb8ba` |
| 9 | `theorem` | [levelwise_exact](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/levelwise-exact.md) | 193 | `result-track:8a8ff30bff5e70d0b95c005d9569c6ba20c4841da09b09d4f7b53f1d6482a162` |
| 10 | `def` | [levelwise_effectively_exact](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/levelwise-effectively-exact.md) | 214 | `declaration-track:453517f58c80715e0cca3c8f2df3f80e2076849dffcece465c0167b167e8c6b0` |
| 11 | `theorem` | [quotation_identity_stable](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/quotation-identity-stable.md) | 245 | `result-track:4d139bbd66d52f9923536efa9c8d4f6e3c9a3a89146bf5cb39e781b3b5e78f46` |
| 12 | `theorem` | [semantic_lift_identity_stable](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/semantic-lift-identity-stable.md) | 255 | `result-track:66df56e69087c41ce6cca32083c6d36df8f7afa5cdf4ad9c4e0b3402930883a1` |
| 13 | `theorem` | [interpretation_square_commutes](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/interpretation-square-commutes.md) | 265 | `result-track:472ebe06e6dca097b158b18c16571d4ac69dd57452815269c67e841758e3a6ad` |
| 14 | `theorem` | [grade_policy_exact](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/grade-policy-exact.md) | 276 | `result-track:c3e94b080bf025d53580afc3ba190d61185e51657f53b73bebe7a71ad67ea3fe` |
| 15 | `theorem` | [blocking_residual_frontier_empty](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/blocking-residual-frontier-empty.md) | 286 | `result-track:894d48437803a23aaa630cf6e0cbfcdcfebae9db8527861bfbd1b0fa82727c60` |
| 16 | `theorem` | [represented_interpreter_realizes_designated](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/represented-interpreter-realizes-designated.md) | 296 | `result-track:f22793d7079637374d702a479dc65e8c3aa2afe17a09989202e96d44695533dd` |
| 17 | `def` | [CoherentAt](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/coherentat.md) | 311 | `declaration-track:d2b4e86eafaa8fb5289f6b0e3c74cf0e291d34bc46a029e2fc5ab7fd7a691285` |
| 18 | `theorem` | [bounded_prefix_coherent](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/bounded-prefix-coherent.md) | 344 | `result-track:9b9e26c1e10e28b00d3855d612768994aaad3d33f1b2e699bfc7b1c7b8efd12a` |
| 19 | `theorem` | [all_levels_coherent](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/all-levels-coherent.md) | 358 | `result-track:d09b91cd5615287c5fc6fb9bcfb9645210faa7385758881cf4efad496c84c521` |
| 20 | `structure` | [FiniteMetaSupportCertificate](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/finitemetasupportcertificate.md) | 378 | `declaration-track:1ba2ab2714545179d7749eeec10dea0a1259c7bc88f660a90abbb0690cb19b22` |
| 21 | `theorem` | [active_iff_le_highest](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/active-iff-le-highest.md) | 389 | `result-track:513eed81dc4122f7a819e6846c486f68f8315c03232d64cf5bc2cd53f91c34ed` |
| 22 | `theorem` | [active_iff_not_default](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/active-iff-not-default.md) | 399 | `result-track:3339a85c7d02b762ebe7051578308e9840845e70abf3682f8355a4fced80d71f` |
| 23 | `theorem` | [no_active_level_above](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/no-active-level-above.md) | 415 | `result-track:b7656074e018e57cc7dc63d52e095d0fe2ce8964aadad3e1307225a10c970718` |
| 24 | `theorem` | [default_above](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/default-above.md) | 423 | `result-track:b9a8a746322762d8dfd850f8d5bfeec15878c34c6f0433d70372953316c9e267` |
| 25 | `theorem` | [highest_active_and_nondefault](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/highest-active-and-nondefault.md) | 431 | `result-track:66c56739e5918d242f59b49b416c5972d1c2e574754b70e96d78de58bd704d28` |
| 26 | `structure` | [ThreeLispStyleReflectionProfile](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/threelispstylereflectionprofile.md) | 449 | `declaration-track:d5baede6d98896e81783bde3a3f8dfb9c341a43bc561d79ddd8456d183e6f71c` |
| 27 | `def` | [Scoped](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/scoped.md) | 461 | `declaration-track:39ce08f792917241e5ec5f913d1266a29b107f03ae0017d68550039d97259478` |
| 28 | `theorem` | [no_literal_equivalence](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/no-literal-equivalence.md) | 467 | `result-track:e35a47a715bd3983d6bfab57753c1a5e146fc96ee0840b79c9511d86fc9c5ac6` |
| 29 | `theorem` | [no_unrestricted_self_modification](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/no-unrestricted-self-modification.md) | 474 | `result-track:bb18f7dc3805a1c3464f772ebaf68ec20da61ac45530523c05768e83dc720fac` |
| 30 | `structure` | [NeuralRhetoricalEnvelope](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/neuralrhetoricalenvelope.md) | 494 | `declaration-track:6fac77305aeb751895820fa7476d542d01ae1544c3161f29011d7e1627068405` |
| 31 | `def` | [CandidateScoped](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/candidatescoped.md) | 522 | `declaration-track:04388f69ed86886d507fd8a0bc0d00e783ac19bfd10027bc965309a37fa12fb4` |
| 32 | `theorem` | [evaluate_quoted_input](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/evaluate-quoted-input.md) | 532 | `result-track:b3d77c0330ff98418aede5a2d319fc54d32daca082e9fd280ae668b1a4afdbc5` |
| 33 | `theorem` | [evaluate_quoted](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/evaluate-quoted.md) | 543 | `result-track:4c128a1704a61153e97660eb0efa5dcc4f62ff50053ea151d4bdd2ac5f1e8799` |
| 34 | `theorem` | [frames_encode_candidate_step](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/frames-encode-candidate-step.md) | 554 | `result-track:44c2e3d72dc3039f8ff97af1584cc803dfce613a77e3b53377849bf4bf23dc7b` |
| 35 | `theorem` | [frames_decode_candidate_step](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/frames-decode-candidate-step.md) | 566 | `result-track:59b6e21538cefdc6cf786d5ad09d13d78916be7eab1c5a31b5a03f143b55195f` |
| 36 | `theorem` | [encodeState_injective](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/encodestate-injective.md) | 580 | `result-track:74b20cf2eca3d0ba51902a064fab05ac194807fc955731545f3af4141ef22ab0` |
| 37 | `theorem` | [evaluate_quoted_step](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/evaluate-quoted-step.md) | 591 | `result-track:89f905fbfb10f9668c5b813663f38532e38421b52d0e744a9986ed48e0b6d8ee` |
| 38 | `theorem` | [evaluate_decode_quoted_step](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/evaluate-decode-quoted-step.md) | 606 | `result-track:6e1293f0e232dcab1bd24a635047f454cfc1ef83b952716d243a9d9a16fdd411` |
| 39 | `theorem` | [strict_reflective_level](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/strict-reflective-level.md) | 624 | `result-track:733a8bdeb9ed4abe12cfd8e4c8cf5851b4adb367024d255e2094a6d5ab9d60c3` |
| 40 | `theorem` | [quotation_does_not_create_authority](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/quotation-does-not-create-authority.md) | 633 | `result-track:fdcc2706379d52941dc6391d7387259df1822d38f9009555a5b103c616d511da` |
| 41 | `inductive` | [AgentStance](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/agentstance.md) | 646 | `declaration-track:999a0165bd875ca5fc8dbc8a5304b434323c8a98b45ea23faad58be46b127de0` |
| 42 | `structure` | [AgentProposal](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/agentproposal.md) | 653 | `declaration-track:f264bb5549086b44f9306542c25ce381a16af3970e62c6ce8c4f820210e015ef` |
| 43 | `structure` | [AgentCoordinationCertificate](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/agentcoordinationcertificate.md) | 666 | `declaration-track:ee0e2cdde7c9984bdc68f338e4ffad167c17971a133d1ba2f7753b32ebacc018` |
| 44 | `def` | [UnanimousSupport](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/unanimoussupport.md) | 681 | `declaration-track:22e63dd2a10525842bb8b9ad7a5776aafd41d1dedbc2fc5ce7d976c7f46944c0` |
| 45 | `def` | [WellFormedCandidate](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/wellformedcandidate.md) | 687 | `declaration-track:68250e54f92a74d98c83eb04291d8f3741d071586a5ba2c93fcf71552b2d034d` |
| 46 | `theorem` | [unanimous_support_not_authority](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/unanimous-support-not-authority.md) | 696 | `result-track:57b1b82bd8eb809ec4b21ceaaf6f6a0ac75129fe4abad2dcda4a55eca516a6af` |
| 47 | `theorem` | [agreement_alone_does_not_entail_authority](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/agreement-alone-does-not-entail-authority.md) | 705 | `result-track:287a395750bc016e595f027363ac4c0660201446446cdf7cb63b8f47c5522179` |
| 48 | `structure` | [CoordinatedReflectiveNeuralProposal](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/coordinatedreflectiveneuralproposal.md) | 737 | `declaration-track:0660f95663ce533093c9c2ebc64d081d4273f1417a30aed4a0ce2a52ac89e852` |
| 49 | `theorem` | [contained_in_rhetorical_space](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/contained-in-rhetorical-space.md) | 758 | `result-track:598f1e121ccef949c133545b605d905d93e3f9036282091bd915534ed564510a` |
| 50 | `theorem` | [admitted_requires_authority](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/admitted-requires-authority.md) | 770 | `result-track:1862a56bc382bb7842f7b4bed7cae31afe1917d2ba5e9292f4dc6bd578e9fcae` |
| 51 | `theorem` | [selected_output_minimizes_squared_error](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/selected-output-minimizes-squared-error.md) | 785 | `result-track:efa794a62b0df359fdfa5c4bce57b7327323ca28255ac878009b3961bd22953a` |
| 52 | `theorem` | [agreement_cannot_replace_missing_authority](../../../../GeneralTopology/ReflectiveAgents.lean/declarations/agreement-cannot-replace-missing-authority.md) | 805 | `result-track:c39db022c419c5507d8560702572b2954a234e434b226dde7799091b1cb9b85d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=295fc83029da95b367ddcd6db04a594503012563f698336eaebef240fa0bc39f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
