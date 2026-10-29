# Verification target: Candidate Inverse Admission Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b5969dc46b9bc39fdd2bf1fd7adda73cd2b05f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant2ae9fb11e03064347fa9f587b06ecb6fd8b1db93f4d75ffd67235675a215a660.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b5969dc46b9bc39fdd2bf1fd7adda73cd2b05f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant2ae9fb11e03064347fa9f587b06ecb6fd8b1db93f4d75ffd67235675a215a660.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant2ae9fb11e03064347fa9f587b06ecb6fd8b1db93f4d75ffd67235675a215a660.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Bridge` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateCausality` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFrequency](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/angularfrequency.md) | 17 | `declaration-track:836bb56350aea25d6e5b65309369631d488c084a670d9f55afe444a900c555eb` |
| 2 | `theorem` | [boundaryInverse_eq_fourierInv](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/boundaryinverse-eq-fourierinv.md) | 21 | `result-track:ff19b44e1bd4243a09fe9cf17665a65d82e9a21b90a7bc8f54a92f932e2ef723` |
| 3 | `theorem` | [candidate_frequency_admission](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-frequency-admission.md) | 40 | `result-track:209029981c1727cf98db0a1eaee836fb9d3dd42193f2255a0205f017cf0783b1` |
| 4 | `def` | [fullBoundaryVector](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/fullboundaryvector.md) | 63 | `declaration-track:32bf985b4d25ecac8ea9d9c41b2842d024ec90e20186a26f6a12ce1389f9ae7c` |
| 5 | `theorem` | [fullBoundaryVector_ae](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/fullboundaryvector-ae.md) | 69 | `result-track:816dcd4e1b6811e076cfc600bfea20656ba542d9b1b085389b0f2e8ab0ac4400` |
| 6 | `theorem` | [candidate_boundaryInverse_memLp](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-memlp.md) | 80 | `result-track:aeab3aba70c20c4c5efe946bea6121a3c94e88c64e9e4f2794d133db491350b1` |
| 7 | `theorem` | [candidate_boundaryInverse_continuous](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-continuous.md) | 86 | `result-track:afc7bbb1f9475eb1a10763194b17f6cf324d75adf919953cf3ab9060fe976da1` |
| 8 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/norm-sq-tolp.md) | 94 | `result-track:b55cc5b348f6ff8329845ee8c4202bac9c66cbdcf43a81d862afbe383b195b95` |
| 9 | `theorem` | [fullBoundaryVector_norm_sq](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/fullboundaryvector-norm-sq.md) | 105 | `result-track:21c5369074ef02e990a755c43527e284152d80316bb751147b812b50155c8059` |
| 10 | `def` | [controller](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/controller.md) | 123 | `declaration-track:b0d40b28704ef1c15f232345fcbedd18d1b697f529dfa856598972e343f702b4` |
| 11 | `theorem` | [controller_ae](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/controller-ae.md) | 128 | `result-track:e0d1f265597422ee26d0ccff426b46e5c2e56a86c751aa2bb9591c8c1c19ba78` |
| 12 | `theorem` | [zeroExtension_controller](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/zeroextension-controller.md) | 135 | `result-track:25762cf86d190fe9426cfd012c9c166b44cb3c6cc677da722977dd403183192a` |
| 13 | `theorem` | [controller_norm_sq](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/controller-norm-sq.md) | 152 | `result-track:afe821cdbf338f0158c23eaa84ef3cf600ddee7e4421da29dc1ea44d9f2e5e4c` |
| 14 | `theorem` | [boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/boundaryinverse-shift.md) | 171 | `result-track:97e1a3b5af555da6853513c48b59ecb72120e26721d88a473320bc3359ba462d` |
| 15 | `theorem` | [candidate_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-shift.md) | 215 | `result-track:8247e4491a3ffcca04fd47c9d595060e151acbbefc33ede02f85b271ca081dc5` |
| 16 | `theorem` | [candidate_boundaryInverse_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-shift.md) | 221 | `result-track:c4f532c8a7d1756e641cd2ddd22df488b4ec8845a0d44e747c7c695903ba9f94` |
| 17 | `theorem` | [candidate_boundaryInverse_bounded](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-bounded.md) | 242 | `result-track:fc98e3d0216529a07a7a4b0419cd9ff70db2b66951432da71e905920c6bbf089` |
| 18 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-half-shift.md) | 262 | `result-track:654277415c97559873f588164ecc1e16c0605274bc6512e18738c5494d2f32fa` |
| 19 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-exp-bound.md) | 278 | `result-track:b14468d18e1528dbfcceabec2847a02917906dc150b23f8b36d233005349065f` |
| 20 | `theorem` | [candidate_boundaryInverse_integrable](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-integrable.md) | 290 | `result-track:92c6e77f291d6490e5b4b662e9b3ebacaba7bb21b7858ca4edf609d5ce70dc4b` |
| 21 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/candidate-boundaryinverse-laplace-integrable.md) | 309 | `result-track:f1a4f7ee342b7e0bb2f6237b9cd64b70b52beb2666322be7f5b525eadfb5de70` |
| 22 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/example-source-edition-4.md) | 334 | `declaration-track:e9bd7e6421a6072dfb48ee0f2d5f8450bb047bf09c11f856863151700b239d98` |
| 23 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/example-source-edition-3.md) | 338 | `declaration-track:c822b4223f46ab80b3718a04a4bbe28e51f4495e7ee86475b379ff9123fe539f` |
| 24 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/example-source-edition-2.md) | 343 | `declaration-track:71eecd7343fddaf84d6569c3b91ea267fa7422cda7c094bef2ffb020525086c9` |
| 25 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/example.md) | 348 | `declaration-track:1c8ebfb844489fba19b15accbc0964fd988c293b1949b6be9481c4a161f838a6` |
| 26 | `example` | [(anonymous)](../../../../MeasureAndIntegration/CandidateInverseAdmissionStatements.lean/declarations/example-source-edition-5.md) | 352 | `declaration-track:f498d27bd33ddb5b3f59c7d57ab57aa1a44de1026f7740f79d10fea94085b665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=352aa6969006bc825139d91bddc6cafcde48d32aa37d3b27e4d956f513f0f273 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant2ae9fb11e03064347fa9f587b06ecb6fd8b1db93f4d75ffd67235675a215a660.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant2ae9fb11e03064347fa9f587b06ecb6fd8b1db93f4d75ffd67235675a215a660.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
