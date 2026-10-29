# Verification target: Trace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401680119d81614c8f84b421ce29607304d29ba9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Trace.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Trace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401680119d81614c8f84b421ce29607304d29ba9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.FunctionalSymmetry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace.md) | 12 | `declaration-track:a83fe414366cb4dac98cc946129551be1b123e3c457c0866f7b013894f8441ab` |
| 2 | `theorem` | [canonicalTrace_zero](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace-zero.md) | 21 | `result-track:a216d71bd12e7d61afbeb47b12cfe0703794ec5b416ea1a4a75f54ee898f73f8` |
| 3 | `theorem` | [canonicalTrace_add](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace-add.md) | 31 | `result-track:24e4b0aa91288bc28bcfe11119155cf8e2cb5f4033813eede7d597a11849ad68` |
| 4 | `theorem` | [canonicalTrace_scale](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace-scale.md) | 46 | `result-track:aa40b3c52fd9f2e2d00736a52d1494b049347def2ba40836443167daaa73f935` |
| 5 | `def` | [crossedProductUnit](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/crossedproductunit.md) | 73 | `declaration-track:ece279e8384661f7426af053acf0e67ee387d4bf88b2b4ec3885d78db2ef50e8` |
| 6 | `theorem` | [canonicalTrace_unit](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace-unit.md) | 83 | `result-track:0bccdd9a4005ad2dc6b957ea8e59d126317c39ca51c3e4831f505f6eddf9376f` |
| 7 | `theorem` | [canonicalTrace_nonnegative_of_identity_coefficient](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/canonicaltrace-nonnegative-of-identity-coefficient.md) | 94 | `result-track:22f558268826ea6a328a7e4b82e0907171b1811b1c738f79d250ebb8298201a6` |
| 8 | `def` | [stableInvariantTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/stableinvarianttrace.md) | 110 | `declaration-track:cd26fd420ab8a8626037e73faed9d4fecd2f6e108e9bf43df9c50f95a698a63c` |
| 9 | `def` | [matrixFiberCanonicalTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/matrixfibercanonicaltrace.md) | 119 | `declaration-track:06b3ad5575e5f8ba3bcaff13a519363019b3e16904606e4e1587a02f6d3ba063` |
| 10 | `theorem` | [stableInvariantTrace_unit](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/stableinvarianttrace-unit.md) | 132 | `result-track:12130d697ad78301a73faddcdb87c17da257dceb624ba7d8ee9db63346c2974f` |
| 11 | `theorem` | [stableInvariantTrace_nonnegative_of_identity_coefficient](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/stableinvarianttrace-nonnegative-of-identity-coefficient.md) | 144 | `result-track:284c935a82ecb3be407824d713338735e332451db3a8bdd975c0f4e56335e8e2` |
| 12 | `structure` | [StableTraceAlgebraLaws](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/stabletracealgebralaws.md) | 164 | `declaration-track:b31015686b93c902112c7387a23486d845d6a4a22fddf32ebc1dce70223e6758` |
| 13 | `structure` | [MatrixFiberCanonicalTraceLaws](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/matrixfibercanonicaltracelaws.md) | 207 | `declaration-track:b1304d55e427c4fb65af4f51cb68e903f08a0278a93a5786ab142eaa2146de12` |
| 14 | `inductive` | [InvariantSectorMeaning](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/invariantsectormeaning.md) | 251 | `declaration-track:3cbef0624b0550fed3b93444f967cde9767350a09f67e40e618ecffcb3506f39` |
| 15 | `structure` | [InvariantProjectionCertificate](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/invariantprojectioncertificate.md) | 259 | `declaration-track:59d3bf699b823911c1f6cab43487955f1b81111ade22b37f12c7bced3a55f342` |
| 16 | `structure` | [InvariantSectorReduction](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/invariantsectorreduction.md) | 265 | `declaration-track:b785e69ebc90679d2edb483f73102775788bf99886d26841f5ce223d2e58442f` |
| 17 | `inductive` | [ReducedTraceMode](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/reducedtracemode.md) | 274 | `declaration-track:6e0097fc59ee19c8c918e3c1a20dc44bd3fbbd8c0cc154ea3f16aa567b26ce44` |
| 18 | `structure` | [CentralSectorReduction](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/centralsectorreduction.md) | 279 | `declaration-track:3a374f6286a2828dc9ee9fa57fc2b78210576cef9814056f9373b7c2121e991b` |
| 19 | `def` | [centralSectorReducedTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/centralsectorreducedtrace.md) | 305 | `declaration-track:19ca8725061ba1e249fed37c7fc014682dcf3c127a1f771ed4e2101e0b959bde` |
| 20 | `def` | [normalizedCentralSectorReducedTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/normalizedcentralsectorreducedtrace.md) | 316 | `declaration-track:f269866461995477f511e28952698d4bd05c139d50eef44a69e43ff26aff5da3` |
| 21 | `structure` | [CornerAlgebraReduction](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/corneralgebrareduction.md) | 331 | `declaration-track:bdc2eb332c4eca974681c3f66bcbebd25a31159bcc225c7f466f9640a7d643a5` |
| 22 | `structure` | [CornerAlgebraElement](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/corneralgebraelement.md) | 363 | `declaration-track:9d60afd5b21ca3a1f7fbf8458b00617d8c0995915cdd9891e1008ea3647f446d` |
| 23 | `def` | [normalizedCornerAlgebraTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/normalizedcorneralgebratrace.md) | 370 | `declaration-track:ed7fcbdb602208cbc93f9f267ac1d4d17dc9bdf3709a95ae5335e235f789153a` |
| 24 | `def` | [reducedStableTrace](../../../../GroupTheoryAndGeneralizations/Trace.lean/declarations/reducedstabletrace.md) | 385 | `declaration-track:76f905a0b207ce48af8316d698577649e3575b56ce235294a505c9f4c02db1f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dfba4165a86174ed64a5bcc970c4fddf4ef26800c67ed2e975128632aad4ae4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Trace/Variantb6da1680039dec0fb9680f95665a853d0b9c46a4f926802c667129eb2849b9bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
