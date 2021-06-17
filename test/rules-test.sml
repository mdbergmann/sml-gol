(* Import DescribeSML *)
CM.make "/Users/mbergmann/sml-libs/DescribeSML/describe.cm";

open Describe;
open Expect;

use "src/rules.sml";

suite (
    describe "Rules" [
        describe "A living cell" [
            should ("die with less than two neighbours",
                    fn () =>
                       expect (is_alive (true, 1)) toBe false),
            should ("survives with 2 neighbours",
                    fn () =>
                       expect (is_alive (true, 2)) toBe true),
            should ("survives with 3 neighbours",
                    fn () =>
                       expect (is_alive (true, 3)) toBe true),
            should ("dies with > 3 neighbours",
                    fn () =>
                       expect (is_alive (true, 4)) toBe false)
        ],
        describe "A dead cell" [
            should ("come alive with 3 neighbours",
                    fn () =>
                       expect (is_alive (false, 3)) toBe true),
            should ("stay daed with more than 3 neighbours",
                    fn () =>
                       expect (is_alive (false, 4)) toBe false),
            should ("stay dead with less 3 neighbours",
                    fn () =>
                       expect (is_alive (false, 2)) toBe false)
        ]
    ]
)
      
