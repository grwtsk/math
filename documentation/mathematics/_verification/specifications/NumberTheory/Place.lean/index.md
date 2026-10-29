# Verification target: Place

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a47b2d1b39247b500abf50a6e212d73d919852a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Place.lean/index.md) · [Full source](../../../../NumberTheory/Place.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a47b2d1b39247b500abf50a6e212d73d919852a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Place](../../../../NumberTheory/Place.lean/declarations/place.md) | 18 | `declaration-track:b9db3f3f29af329a98781fd61e0d82ea5f520657cd1a930ebbfc9ff6c9ff5437` |
| 2 | `def` | [IsFinitePrimePlace](../../../../NumberTheory/Place.lean/declarations/isfiniteprimeplace.md) | 23 | `declaration-track:5346a0f0b5b19d13c6d2b94c969ccd97894ec54d82771e26bbffb71bb4e2f134` |
| 3 | `def` | [IsBadTMFPrime](../../../../NumberTheory/Place.lean/declarations/isbadtmfprime.md) | 26 | `declaration-track:1771745852a155974d4c7a991deea407629526f9449dc84079aa4f97752a9d73` |
| 4 | `def` | [IsArchimedeanPlace](../../../../NumberTheory/Place.lean/declarations/isarchimedeanplace.md) | 29 | `declaration-track:a32d9bd830d2b54f1e75d0e432167114260622b7c700a4a7c19a3a197b0595fb` |
| 5 | `theorem` | [archimedean_ne_finite](../../../../NumberTheory/Place.lean/declarations/archimedean-ne-finite.md) | 32 | `result-track:c5df9abd7217a21734bbbb2c697d2d283974cbb92b17dbddda3a4f8e8efb2201` |
| 6 | `theorem` | [bad_tmf_prime_is_finite](../../../../NumberTheory/Place.lean/declarations/bad-tmf-prime-is-finite.md) | 38 | `result-track:3a7e39c7342331ea3cc8dcc895ddf8ffd4c89e8ea29e9dba0dc42aee6e643268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78eb1118c5b403eef9ffb8e63df5038efde9fa368056a964c47c94cff9646a72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Place/Variant7b4cabd75540e55ac13ef80aa022d89f8e0da855ed10cb989568d2cd0f433cb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
