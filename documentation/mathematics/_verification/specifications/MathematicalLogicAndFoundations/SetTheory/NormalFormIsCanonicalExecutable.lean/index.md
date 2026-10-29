# Verification target: Normal Form Is Canonical Executable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d33cb82e2975b86c09a73793a0b72ec6768556b2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d33cb82e2975b86c09a73793a0b72ec6768556b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.OrdinalTally.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCanonicalExecutable](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/iscanonicalexecutable.md) | 13 | `declaration-track:65fccb40a9488a11b87c5c59a33bb0d64dbc1a368b744b03b48e91e18b93534b` |
| 2 | `structure` | [ExecutableNormalForm](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/executablenormalform.md) | 21 | `declaration-track:0aa3467c3b0a8428168a25db8318b17abe5fc79a6947a484d53f6d07a69dd850` |
| 3 | `def` | [value](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/value.md) | 27 | `declaration-track:bad6ca9cd6e0f33d82ec25ea2c56e5f3b330246dc2b7f7ee7c942dfc0b39669b` |
| 4 | `def` | [raw](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/raw.md) | 31 | `declaration-track:3d8f9b31d6039e7844aa2c1e63d33a3c24f834be4b267ad6edd7b7a6fc0b1c75` |
| 5 | `abbrev` | [CanonicalCode](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/canonicalcode.md) | 37 | `declaration-track:e0047d33ee5e2701e6d68fdfb437f5d4836ecec677c9b3c723a2e11410fe3e72` |
| 6 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/zero.md) | 43 | `declaration-track:e1d74b4804ce095f263eb359e75f28a28390484ce1203778056b5c374a473846` |
| 7 | `def` | [tall](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/tall.md) | 48 | `declaration-track:420aa98c0c67565e90bd53e53073d9010690c23537c7055e3d57b4efe4a18767` |
| 8 | `structure` | [NormalizationCertificate](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/normalizationcertificate.md) | 65 | `declaration-track:cc3395e9fe886d26a57ef52b8f441a1d17050cec50deb0e2663a59325e78109f` |
| 9 | `def` | [NormalizationCertificate.notationallyEqual](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/normalizationcertificate-notationallyequal.md) | 78 | `declaration-track:b2cbae5d11a864b0d33457ffc23e9712d406ec1d9f224112f69e29cf191cf54a` |
| 10 | `theorem` | [ordinalTally_normalization_sound](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/ordinaltally-normalization-sound.md) | 86 | `result-track:8ac19207d8b18781b849d1c43d03ed40c5919776748e603242919a53349f913d` |
| 11 | `theorem` | [ordinalTally_normalization_fixed](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/ordinaltally-normalization-fixed.md) | 95 | `result-track:35ec47c7771c9db2f4a6260952b15de1fec5f6099a3e1f50d0ee1babe14153b4` |
| 12 | `theorem` | [normalized_notation_equal_is_semantic](../../../../../MathematicalLogicAndFoundations/SetTheory/NormalFormIsCanonicalExecutable.lean/declarations/normalized-notation-equal-is-semantic.md) | 104 | `result-track:f3d0840e8f003624e3cceeeabbf0b1cc5ef5499493c6b21bb175c97ffbd135b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25edb075edbd1f04b8749727e22f099a896b3147e620c707d14caae1e0ec8c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
