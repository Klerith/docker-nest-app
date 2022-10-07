import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello() {
    return this.appService.getHello();
  }

  @Get('world')
  getWorld() {
    return {
      world: 'Hello',
    };
  }

  @Get('hola')
  getHolaMundo() {
    return {
      hola: 'mundo',
    };
  }
}
