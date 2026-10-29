# Verification target: Certificate Metadata

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2312728418de85a6ed8866b5d31f2e6339d999",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CertificateMetadata.lean/index.md) · [Full source](../../../../Combinatorics/CertificateMetadata.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2312728418de85a6ed8866b5d31f2e6339d999`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Kernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Authority` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotComponents` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CertificateKind](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificatekind.md) | 18 | `declaration-track:73bec7bf746302eb1a346ab5ec0653a284ab7676268989d83a6f36da70eeae69` |
| 2 | `inductive` | [CertificateAuthorityState](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificateauthoritystate.md) | 46 | `declaration-track:58f95ac38d73dde0f5beeb22643c9b08edab181f77893654362106e8a37f584f` |
| 3 | `inductive` | [CertificateAuthorityTransition](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificateauthoritytransition.md) | 55 | `declaration-track:0a81269530d649ee0b5f1abf8f23b3f6d82ffe00e023cb5b548a2c4703661e55` |
| 4 | `theorem` | [CertificateAuthorityTransition.revoked_terminal](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificateauthoritytransition-revoked-terminal.md) | 74 | `result-track:83655236e23e99aa7559de3722b88350c340a8e64a3b081d8c6f30d192ef5e83` |
| 5 | `theorem` | [CertificateAuthorityTransition.superseded_terminal](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificateauthoritytransition-superseded-terminal.md) | 80 | `result-track:01d7589aaece612adf749bebb066d1593a441ba0637a36a7338ddf70ce6b504c` |
| 6 | `structure` | [CertificateMetadata](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificatemetadata.md) | 90 | `declaration-track:6ebba55dc34585e51d721415a66bf48831e74537303548be3d10cc22692f0d4c` |
| 7 | `structure` | [CertificateDependencyRegistry](../../../../Combinatorics/CertificateMetadata.lean/declarations/certificatedependencyregistry.md) | 110 | `declaration-track:c6ac56a9c66feca9d264893752f52f95da222b55258f5788142c3b8a9e098532` |
| 8 | `inductive` | [UpstreamReachable](../../../../Combinatorics/CertificateMetadata.lean/declarations/upstreamreachable.md) | 142 | `declaration-track:7db11fe5ffdf58954398f3b29cc3c4827db8301e4d2ccc692ded660c9a6a77c7` |
| 9 | `theorem` | [no_direct_self_dependency](../../../../Combinatorics/CertificateMetadata.lean/declarations/no-direct-self-dependency.md) | 157 | `result-track:dacb8b1a1b4b5db9817d1a99ba1dfdc6bde35cc3649545498ce3053fe79a892b` |
| 10 | `theorem` | [upstream_component_subset](../../../../Combinatorics/CertificateMetadata.lean/declarations/upstream-component-subset.md) | 168 | `result-track:199c955c3c1533fc8949ff2fb0004ba73dd1c57e67724d53a3f64bd31666ba06` |
| 11 | `theorem` | [registered_of_reachable](../../../../Combinatorics/CertificateMetadata.lean/declarations/registered-of-reachable.md) | 182 | `result-track:ab642c814999028b16667d8023103f38b8af477be256540d0f48457fad225c30` |
| 12 | `theorem` | [rank_decreases_along_reachable](../../../../Combinatorics/CertificateMetadata.lean/declarations/rank-decreases-along-reachable.md) | 204 | `result-track:9e5843af9f0f6dacae60a16f5890b6b049369fc60017d7cc76e6cf4a53c9c181` |
| 13 | `theorem` | [no_dependency_cycle](../../../../Combinatorics/CertificateMetadata.lean/declarations/no-dependency-cycle.md) | 227 | `result-track:b1bd07d78c21090c6813da88eafdba771e58906138bfcb4fc340f018f4418dd0` |
| 14 | `structure` | [AcceptedCertificateAuthorization](../../../../Combinatorics/CertificateMetadata.lean/declarations/acceptedcertificateauthorization.md) | 244 | `declaration-track:da07ef60319a179c65b214c6f39589b5a16f62015fb29ba5b803e94f54bc56e6` |
| 15 | `theorem` | [snapshot_exact](../../../../Combinatorics/CertificateMetadata.lean/declarations/snapshot-exact.md) | 255 | `result-track:bc0b72ce8a84264389c71b72a8153d2becdfb7a7f12acf36fa23d308f77486c3` |
| 16 | `theorem` | [admitted](../../../../Combinatorics/CertificateMetadata.lean/declarations/admitted.md) | 264 | `result-track:d76880fb2e4981b43472bb05354b2c4bcd327c7aa731ee5b7d754924bb71c1bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5059ced292f235d8cb0f921b3f0732d0998e6aacab702225f5adb3e6f106f085 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CertificateMetadata/Variantf6f37cc5a640adcd79d1da6f4c345855ba5fddd8f814843eec0a40871d5bf78f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
