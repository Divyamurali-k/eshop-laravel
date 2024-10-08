<?php

namespace App\Console\Commands;
use App\Models\Cart;
use Illuminate\Console\Command;

class RemoveOldCarts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    // protected $signature = 'carts:remove-old';
    protected $signature = 'carts:remove-old{--days=7 : The days after which the carts will be removed}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Remove the old carts based on a given days';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // $deadline = now()->subDays(7);
        $deadline = now()->subDays($this->option('days'));
        $counter = Cart::whereDate('updated_at', '<=', $deadline)->delete();
        $this->info("Done ! {$counter} carts were removed.");
        // return Command::SUCCESS;
    }
}
