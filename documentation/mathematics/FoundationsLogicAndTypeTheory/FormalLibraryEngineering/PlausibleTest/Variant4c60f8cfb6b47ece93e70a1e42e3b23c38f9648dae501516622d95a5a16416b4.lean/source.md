# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlausibleTest.Variant4c60f8cfb6b47ece93e70a1e42e3b23c38f9648dae501516622d95a5a16416b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67c5de7c9b3c47692609bafa16b0a1b6e6cf93ef` · SHA-256 `28053e94f382aaed0029390ad94d144329ca7a28221042ae36fe39a0d24c24a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","mathematical_subject":"Foundations.Unclassified","original_sha256":"de173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
import PlausibleTest.Tactic
import PlausibleTest.Testable

-- Tests for `deriving Arbitrary`
import PlausibleTest.DeriveArbitrary.DeriveTreeGenerator
import PlausibleTest.DeriveArbitrary.DeriveSTLCTermTypeGenerators
import PlausibleTest.DeriveArbitrary.DeriveNKIValueGenerator
import PlausibleTest.DeriveArbitrary.DeriveNKIBinopGenerator
import PlausibleTest.DeriveArbitrary.DeriveRegExpGenerator
import PlausibleTest.DeriveArbitrary.StructureTest
import PlausibleTest.DeriveArbitrary.BitVecStructureTest
import PlausibleTest.DeriveArbitrary.MissingNonRecursiveConstructorTest
import PlausibleTest.DeriveArbitrary.ParameterizedTypeTest
import PlausibleTest.DeriveArbitrary.MutuallyRecursiveTypeTest

-- Tests for `deriving Shrinkable`
import PlausibleTest.DeriveShrinkable.DeriveShrinkableTest
import PlausibleTest.DeriveShrinkable.DeriveShrinkableMutualTest

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantde173f50b856262a22e599c477f2517c2fa2c45ddb02528d84e426ee0b284c3b

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb63c6e0a05fccd58794955e25d498f08df7bfd11282bf80eda7ab6626e4ef41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlausibleTest/Variant4c60f8cfb6b47ece93e70a1e42e3b23c38f9648dae501516622d95a5a16416b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
