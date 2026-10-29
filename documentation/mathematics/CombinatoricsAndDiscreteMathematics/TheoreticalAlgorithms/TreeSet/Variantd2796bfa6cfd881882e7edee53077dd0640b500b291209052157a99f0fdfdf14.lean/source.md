# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeSet.Variantd2796bfa6cfd881882e7edee53077dd0640b500b291209052157a99f0fdfdf14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fd12aa7d9dd51df4758d7914a59cd359acb99f5` · SHA-256 `a784b27e9a6ffeae340ce74a52b680384435275b1f52d5fe4ed35e715a031cc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeSet.Variant2ce48a2beb20350db007447ba13d920ba0cda594148948dc95065d167c304f9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ce48a2beb20350db007447ba13d920ba0cda594148948dc95065d167c304f9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TreeSet.Variant2ce48a2beb20350db007447ba13d920ba0cda594148948dc95065d167c304f9c","mathematical_subject":"Computation.DataStructures","original_sha256":"2ce48a2beb20350db007447ba13d920ba0cda594148948dc95065d167c304f9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeSet.Basic
public import Std.Data.TreeSet.AdditionalOperations
public import Std.Data.TreeSet.Lemmas
public import Std.Data.TreeSet.Iterator
public import Std.Data.TreeSet.Slice
public import Std.Data.TreeSet.DecidableEquiv

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeSet.Variant2ce48a2beb20350db007447ba13d920ba0cda594148948dc95065d167c304f9c

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47886998b53e8c02f6277dfedf696e435c0d59d3395e75a75ce71fcc96ee4e03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TreeSet/Variantd2796bfa6cfd881882e7edee53077dd0640b500b291209052157a99f0fdfdf14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
