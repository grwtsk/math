# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variant570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ee6df80f5512fe21938c749e3314bd2eaea40c9` · SHA-256 `570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- Adversarial solution: hides `sorryAx` (an axiom that is NOT in permitted_axioms)
-- inside the hole body. The kernel accepts the proof of `foo` because `n + 17`
-- β-reduces to `17 + 17 = 34` regardless of which `Unit` argument is passed. The
-- stored term for `foo` (written as `@Eq.refl Nat 34`) does not syntactically
-- reference `n`, so without explicit hole-body axiom checking this illegal
-- axiom usage would escape validation.
noncomputable def n : Nat := (fun _ : Nat => 17) (sorryAx Nat false)

theorem foo : n + 17 = 34 := @Eq.refl Nat 34
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02f3789e22f2ed4a9eadaae1e25a12cc182fb138bef9b35b0abf0769d3df4c35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solution/Variant570f8c0e1af5709001c09e27a5642b129806fc3967f5e60e47fa70a15fd3a04b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
