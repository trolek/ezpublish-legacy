{* simple case *}
{for 1 to 5 as $i}
i={$i}

{/for}

{* test {break} *}
{for 1 to 5 as $i}
i={$i}

{if eq( $i, 3 )}
{break}
{/if}
{/for}

{* test delimiter/skip/continue/sequence *}
{for 1 to 5 as $i sequence array( 'left', 'right' ) as $seq}{delimiter} :: {/delimiter}
{if eq( $i, 2 )}
{skip}
{elseif eq( $i, 4 )}
{continue}
{/if}
{$i}({$seq})
{/for}
{* end *}
